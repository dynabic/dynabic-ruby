require "uri"

class Transactions_api
  basePath = "https://api.dynabic.com/Billing"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_transactions_for_site (site_subdomain,format,page_number,page_size,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "format is required" if format.nil?
    raise "page_number is required" if page_number.nil?
    raise "page_size is required" if page_size.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :format => format, :page_number => page_number, :page_size => page_size}.merge(opts)

    #resource path
    path = "/transactions/{siteSubdomain}.{format}?pageNumber={pageNumber}&amp;pageSize={pageSize}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'format' + '}', escapeString(format))
    .sub('{' + 'pageNumber' + '}', escapeString(page_number))
    .sub('{' + 'pageSize' + '}', escapeString(page_size))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|TransactionResponse.new(response)}
  end

def self._get_transactions_for_subscription (subscription_id,format,page_number,page_size,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "format is required" if format.nil?
    raise "page_number is required" if page_number.nil?
    raise "page_size is required" if page_size.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :format => format, :page_number => page_number, :page_size => page_size}.merge(opts)

    #resource path
    path = "/transactions/subscription/{subscriptionId}.{format}?pageNumber={pageNumber}&amp;pageSize={pageSize}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'format' + '}', escapeString(format))
    .sub('{' + 'pageNumber' + '}', escapeString(page_number))
    .sub('{' + 'pageSize' + '}', escapeString(page_size))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|TransactionResponse.new(response)}
  end

def self._get_transactions_for_customer (customer_id,format,page_number,page_size,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "format is required" if format.nil?
    raise "page_number is required" if page_number.nil?
    raise "page_size is required" if page_size.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :format => format, :page_number => page_number, :page_size => page_size}.merge(opts)

    #resource path
    path = "/transactions/customer/{customerId}.{format}?pageNumber={pageNumber}&amp;pageSize={pageSize}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'format' + '}', escapeString(format))
    .sub('{' + 'pageNumber' + '}', escapeString(page_number))
    .sub('{' + 'pageSize' + '}', escapeString(page_size))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|TransactionResponse.new(response)}
  end

end

