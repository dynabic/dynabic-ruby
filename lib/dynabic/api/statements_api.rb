require "uri"

class Statements_api
  basePath = "https://api.dynabic.com/Billing"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_statements_for_subscription (subscription_id,format,page_number,page_size,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "format is required" if format.nil?
    raise "page_number is required" if page_number.nil?
    raise "page_size is required" if page_size.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :format => format, :page_number => page_number, :page_size => page_size}.merge(opts)

    #resource path
    path = "/statements/subscription/{subscriptionId}.{format}?pageNumber={pageNumber}&amp;pageSize={pageSize}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
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
    response.map {|response|Statement.new(response)}
  end

end

