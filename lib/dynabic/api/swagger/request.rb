module Swagger

  class Request
    require 'uri'
    require 'addressable/uri'
    require 'typhoeus'
    require_relative 'version'
    require 'openssl'
    require 'base64'

    attr_accessor :host, :path, :format, :params, :body, :http_method, :headers


    # All requests must have an HTTP method and a path
    # Optionals parameters are :params, :headers, :body, :format, :host
    #
    def initialize(http_method, path, attributes={})
      attributes[:format] ||= Swagger.configuration.format
      attributes[:params] ||= {}

      # Set default headers
      default_headers = {
        'Content-Type' => "application/#{attributes[:format].downcase}",
      }

      # client_id from headers hash trumps the default, even if its value is blank
      if attributes[:headers].present? && attributes[:headers].has_key?(:client_id)
        default_headers.delete(:client_id)
      end

      # client_id from params hash trumps all others (headers and default_headers)
      if attributes[:params].present? && attributes[:params].has_key?(:client_id)
        attributes[:params].delete(:client_id)
        attributes[:headers].delete(:client_id) if attributes[:headers].present?
      end

      # Merge argument headers into defaults
      attributes[:headers] = default_headers.merge(attributes[:headers] || {})

      self.http_method = http_method.to_sym
      self.path = path
      attributes.each do |name, value|
        send("#{name.to_s.underscore.to_sym}=", value)
      end
    end

    # Construct a base URL
    #
    def url(options = {})
      u = Addressable::URI.new(
        :scheme => Swagger.configuration.scheme,
        :host => Swagger.configuration.host,
        :path => self.interpreted_path,
        :query => self.query_string.sub(/\?/, '')
      ).to_s

      # Drop trailing question mark, if present
      u.sub! /\?$/, ''

      # append clientkey
      u << "#{u.include?('?') ? '&' : '?'}clientkey=#{Swagger.configuration.client_id}"
      # append signature
      u << "&signature=#{sign(u)}"

      u
    end

    # Iterate over the params hash, injecting any path values into the path string
    #
    # e.g. /word.{format}/{word}/entries => /word.json/cat/entries
    def interpreted_path
      p = self.path.dup

      # Fill in the path params
      self.params.each_pair do |key, value|
        p = p.gsub("{#{key}}", value.to_s)
      end

      URI.encode [Swagger.configuration.base_path, p].join("/").gsub(/\/+/, '/')
    end

    # Massage the request body into a state of readiness
    # If body is a hash, camelize all keys then convert to a json string
    #
    def body=(value)
      if value.is_a?(Hash)
        value = value.inject({}) do |memo, (k,v)|
          memo[k.to_s.camelize(:lower).to_sym] = v
          memo
        end
      end
      @body = value
    end

    # If body is an object, JSONify it before making the actual request.
    #
    def outgoing_body
      body.is_a?(String) ? body : body.to_json
    end

    # Construct a query string from the query-string-type params
    def query_string

      # Iterate over all params,
      # .. removing the ones that are part of the path itself.
      # .. stringifying values so Addressable doesn't blow up.
      query_values = {}
      self.params.each_pair do |key, value|
        next if self.path.include? "{#{key}}"                                   # skip path params
        next if value.blank? && value.class != FalseClass                       # skip empties
        key = key.to_s.camelize(:lower).to_sym unless key.to_sym == :client_id    # client_id is not a camelCased param
        query_values[key] = value.to_s
      end

      # We don't want to end up with '?' as our query string
      # if there aren't really any params
      return "" if query_values.blank?

      # Addressable requires query_values to be set after initialization..
      qs = Addressable::URI.new
      qs.query_values = query_values
      qs.to_s
    end

    def make
      logger = Logger.new STDOUT
      logger.debug self.url
      response = case self.http_method.to_sym
      when :get,:GET
        Typhoeus::Request.get(
          self.url,
          :headers => self.headers.stringify_keys,
        )

      when :post,:POST
        Typhoeus::Request.post(
          self.url,
          :body => self.outgoing_body,
          :headers => self.headers.stringify_keys.merge('clientkey' => Swagger.configuration.client_id, 'signature' => sign(outgoing_body)),
        )

      when :put,:PUT
        Typhoeus::Request.put(
          self.url,
          :body => self.outgoing_body,
          :headers => self.headers.stringify_keys.merge('clientkey' => Swagger.configuration.client_id, 'signature' => sign(outgoing_body)),
        )

      when :delete,:DELETE
        Typhoeus::Request.delete(
          self.url,
          :body => self.outgoing_body,
          :headers => self.headers.stringify_keys,
        )
      end
      Response.new(response)
    end

    def response
      self.make
    end

    def response_code_pretty
      return unless @response.present?
      @response.code.to_s
    end

    def response_headers_pretty
      return unless @response.present?
      # JSON.pretty_generate(@response.headers).gsub(/\n/, '<br/>') # <- This was for RestClient
      @response.headers.gsub(/\n/, '<br/>') # <- This is for Typhoeus
    end

    def sign(string)
      hash = OpenSSL::HMAC.digest('sha1', Swagger.configuration.private_key, string.downcase)
      # convert hash to base64
      hash = Base64.strict_encode64(hash)
      # replace + and /
      hash.gsub!(/\+/, '-')
      hash.gsub!(/\//, '_')
      # remove trailing '='
      hash.gsub!(/=*$/, '')
    end

  end
end
