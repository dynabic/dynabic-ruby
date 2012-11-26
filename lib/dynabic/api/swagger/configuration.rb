module Swagger

  class Configuration
    require_relative 'version'

    attr_accessor :format, :client_id, :private_key, :username, :password, :auth_token, :scheme, :host, :base_path, :user_agent, :logger

    # Defaults go in here..
    def initialize
      @format = 'json'
      @scheme = 'http'
      @host = 'api.wordnik.com'
      @base_path = '/v4'
      @user_agent = "ruby-#{Swagger::VERSION}"
    end

  end

end
