require "uri"

class Reports_api
  basePath = "https://api.dynabic.com/Billing"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_products_signups_evolution (site_subdomain,start_date,end_date,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "start_date is required" if start_date.nil?
    raise "end_date is required" if end_date.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :start_date => start_date, :end_date => end_date, :format => format}.merge(opts)

    #resource path
    path = "/reports/ProductsSignupsEvolution/{siteSubdomain}/{startDate}/{format}?endDate={endDate}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'startDate' + '}', escapeString(start_date))
    .sub('{' + 'endDate' + '}', escapeString(end_date))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|ProductsSignups.new(response)}
  end

def self._get_products_revenues_evolution (site_subdomain,start_date,end_date,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "start_date is required" if start_date.nil?
    raise "end_date is required" if end_date.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :start_date => start_date, :end_date => end_date, :format => format}.merge(opts)

    #resource path
    path = "/reports/ProductsRevenuesEvolution/{siteSubdomain}/{startDate}/{format}?endDate={endDate}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'startDate' + '}', escapeString(start_date))
    .sub('{' + 'endDate' + '}', escapeString(end_date))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|ProductsRevenues.new(response)}
  end

def self._get_total_revenue_amount (site_subdomain,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :format => format}.merge(opts)

    #resource path
    path = "/reports/TotalRevenueAmount/{siteSubdomain}/{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|RevenueAmount.new(response)}
  end

def self._get_active_subscriptions_count (site_subdomain,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :format => format}.merge(opts)

    #resource path
    path = "/reports/ActiveSubscriptionsCount/{siteSubdomain}/{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ActiveSubscriptionsCountResponse.new(response)
  end

def self._get_total_subscribers_count (site_subdomain,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :format => format}.merge(opts)

    #resource path
    path = "/reports/TotalSubscribersCount/{siteSubdomain}/{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TotalSubscribersCountResponse.new(response)
  end

def self._get_today_revenue_amount (site_subdomain,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :format => format}.merge(opts)

    #resource path
    path = "/reports/TodayRevenueAmount/{siteSubdomain}/{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|RevenueAmount.new(response)}
  end

def self._get_today_new_subscribers_count (site_subdomain,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :format => format}.merge(opts)

    #resource path
    path = "/reports/TodayNewSubscribersCount/{siteSubdomain}/{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TodayNewSubscribersCountResponse.new(response)
  end

def self._get_signups_evolution (site_subdomain,start_date,end_date,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "start_date is required" if start_date.nil?
    raise "end_date is required" if end_date.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :start_date => start_date, :end_date => end_date, :format => format}.merge(opts)

    #resource path
    path = "/reports/SignupsEvolution/{siteSubdomain}/{startDate}/{format}?endDate={endDate}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'startDate' + '}', escapeString(start_date))
    .sub('{' + 'endDate' + '}', escapeString(end_date))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|ReportIntValueItem.new(response)}
  end

def self._get_revenues_evolution (site_subdomain,start_date,end_date,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "start_date is required" if start_date.nil?
    raise "end_date is required" if end_date.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :start_date => start_date, :end_date => end_date, :format => format}.merge(opts)

    #resource path
    path = "/reports/RevenuesEvolution/{siteSubdomain}/{startDate}/{format}?endDate={endDate}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'startDate' + '}', escapeString(start_date))
    .sub('{' + 'endDate' + '}', escapeString(end_date))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|ReportDecimalValueItem.new(response)}
  end

def self._get_customers_evolution (site_subdomain,start_date,end_date,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "start_date is required" if start_date.nil?
    raise "end_date is required" if end_date.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :start_date => start_date, :end_date => end_date, :format => format}.merge(opts)

    #resource path
    path = "/reports/CustomersEvolution/{siteSubdomain}/{startDate}/{format}?endDate={endDate}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'startDate' + '}', escapeString(start_date))
    .sub('{' + 'endDate' + '}', escapeString(end_date))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|ReportIntValueItem.new(response)}
  end

def self._get_subscriptions_evolution (site_subdomain,start_date,end_date,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "start_date is required" if start_date.nil?
    raise "end_date is required" if end_date.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :start_date => start_date, :end_date => end_date, :format => format}.merge(opts)

    #resource path
    path = "/reports/SubscriptionsEvolution/{siteSubdomain}/{startDate}/{format}?endDate={endDate}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'startDate' + '}', escapeString(start_date))
    .sub('{' + 'endDate' + '}', escapeString(end_date))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|ReportIntValueItem.new(response)}
  end

def self._get_sites_summary (format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :format => format}.merge(opts)

    #resource path
    path = "/reports/SitesSummary/{format}".sub('{format}','json').sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|SiteSummary.new(response)}
  end

end

