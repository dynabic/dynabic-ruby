require "uri"

class Address_api
  basePath = "https://api.dynabic.com/Billing"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_address_xml (address_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "address_id is required" if address_id.nil?
    # set default values and merge with input
    options = { :address_id => address_id}.merge(opts)

    #resource path
    path = "/address/{addressId}.xml".sub('{format}','json').sub('{' + 'addressId' + '}', escapeString(address_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Address.new(response)
  end

def self._get_address_json (address_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "address_id is required" if address_id.nil?
    # set default values and merge with input
    options = { :address_id => address_id}.merge(opts)

    #resource path
    path = "/address/{addressId}.json".sub('{format}','json').sub('{' + 'addressId' + '}', escapeString(address_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    Address.new(response)
  end

end

