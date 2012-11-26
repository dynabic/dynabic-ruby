require "uri"

class Tests_api
  basePath = "https://api.dynabic.com/Billing"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._refund (subscription_id,transaction_id,amount,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "transaction_id is required" if transaction_id.nil?
    raise "amount is required" if amount.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :transaction_id => transaction_id, :amount => amount}.merge(opts)

    #resource path
    path = "/tests/refund/{subscriptionId}/{transactionId}/{amount}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'transactionId' + '}', escapeString(transaction_id))
    .sub('{' + 'amount' + '}', escapeString(amount))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    boolean.new(response)
  end

def self._adjust_subscription_balance (subscription_id,is_amount_absolute,amount,charge_details,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "is_amount_absolute is required" if is_amount_absolute.nil?
    raise "amount is required" if amount.nil?
    raise "charge_details is required" if charge_details.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :is_amount_absolute => is_amount_absolute, :amount => amount, :charge_details => charge_details}.merge(opts)

    #resource path
    path = "/tests/adjustsubscriptionbalance/{subscriptionId}/{isAmountAbsolute}/{amount}/{chargeDetails}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'isAmountAbsolute' + '}', escapeString(is_amount_absolute))
    .sub('{' + 'amount' + '}', escapeString(amount))
    .sub('{' + 'chargeDetails' + '}', escapeString(charge_details))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    boolean.new(response)
  end

def self._assess_subscriptions (opts={})
    query_param_keys = []

    # set default values and merge with input
    options = { }.merge(opts)

    #resource path
    path = "/tests/assesssubscriptions".sub('{format}','json')
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    
  end

def self._add_charge_to_subscription (subscription_id,amount,charge_details,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "amount is required" if amount.nil?
    raise "charge_details is required" if charge_details.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :amount => amount, :charge_details => charge_details, :format => format}.merge(opts)

    #resource path
    path = "/tests/addcharge/{subscriptionId}/{amount}/{chargeDetails}.{format}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'amount' + '}', escapeString(amount))
    .sub('{' + 'chargeDetails' + '}', escapeString(charge_details))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    boolean.new(response)
  end

def self._add_subscription (site_subdomain,body,sign_up_date,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "body is required" if body.nil?
    raise "sign_up_date is required" if sign_up_date.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :body => body, :sign_up_date => sign_up_date, :format => format}.merge(opts)

    #resource path
    path = "/tests/addsubscription/{siteSubdomain}/{signUpDate}/{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'signUpDate' + '}', escapeString(sign_up_date))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SubscriptionResponse.new(response)
  end

def self._add_event_to_subscription (format,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "format is required" if format.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :format => format, :body => body}.merge(opts)

    #resource path
    path = "/tests/addeventtosubscription/{format}".sub('{format}','json').sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    if body != nil
      if body.is_a?(Array)
        array = Array.new
        body.each do |item|
          if item.respond_to?("to_body".to_sym)
            array.push item.to_body
          else
            array.push item
          end
        end
        post_body = array

      else 
        if body.respond_to?("to_body".to_sym)
	        post_body = body.to_body
	      else
	        post_body = body
	      end
      end
    end
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    boolean.new(response)
  end

def self._send_daily_activity_report (site_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_id is required" if site_id.nil?
    # set default values and merge with input
    options = { :site_id => site_id}.merge(opts)

    #resource path
    path = "/tests/sendemailupdate/{siteId}".sub('{format}','json').sub('{' + 'siteId' + '}', escapeString(site_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    boolean.new(response)
  end

def self._get_product_with_full_data (product_id,site_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "product_id is required" if product_id.nil?
    raise "site_id is required" if site_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :product_id => product_id, :site_id => site_id, :format => format}.merge(opts)

    #resource path
    path = "/tests/fullproduct/{siteId}/{productId}.{format}".sub('{format}','json').sub('{' + 'productId' + '}', escapeString(product_id))
    .sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ProductResponse.new(response)
  end

def self._get_subscription_items_for_all_subscription_product_items (subscription_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :format => format}.merge(opts)

    #resource path
    path = "/tests/getsubscriptionitemsforallsubscriptionproductitems/{subscriptionId}.{format}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    
  end

def self._get_subscription_items_for_pricing_plan (product_pricing_plan_id,site_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "product_pricing_plan_id is required" if product_pricing_plan_id.nil?
    raise "site_id is required" if site_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :product_pricing_plan_id => product_pricing_plan_id, :site_id => site_id, :format => format}.merge(opts)

    #resource path
    path = "/tests/getsubscriptionitemsforpricingplan/{siteId}/{productPricingPlanId}.{format}".sub('{format}','json').sub('{' + 'productPricingPlanId' + '}', escapeString(product_pricing_plan_id))
    .sub('{' + 'siteId' + '}', escapeString(site_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    
  end

end

