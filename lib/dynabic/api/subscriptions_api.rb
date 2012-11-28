require "uri"

class Subscriptions_api
  basePath = "https://api.dynabic.com/Billing"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_subscriptions (site_subdomain,format,page_number,page_size,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "format is required" if format.nil?
    raise "page_number is required" if page_number.nil?
    raise "page_size is required" if page_size.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :format => format, :page_number => page_number, :page_size => page_size}.merge(opts)

    #resource path
    path = "/subscriptions/site-{siteSubdomain}?pageNumber={pageNumber}&pageSize={pageSize}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
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
    response.map {|response|SubscriptionResponse.new(response)}
  end

def self._get_subscriptions_for_status (site_subdomain,status,format,page_number,page_size,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "status is required" if status.nil?
    raise "format is required" if format.nil?
    raise "page_number is required" if page_number.nil?
    raise "page_size is required" if page_size.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :status => status, :format => format, :page_number => page_number, :page_size => page_size}.merge(opts)

    #resource path
    path = "/subscriptions/{siteSubdomain}/status={status}.{format}?pageNumber={pageNumber}&amp;pageSize={pageSize}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'status' + '}', escapeString(status))
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
    response.map {|response|SubscriptionResponse.new(response)}
  end

def self._get_subscription (subscription_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/{subscriptionId}.{format}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'format' + '}', escapeString(format))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SubscriptionResponse.new(response)
  end

def self._get_subscriptions_of_customer (customer_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/{customerId}/subscriptions.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'format' + '}', escapeString(format))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|SubscriptionResponse.new(response)}
  end

def self._get_subscriptions_of_customer_by_reference_id (site_subdomain,customer_reference_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "customer_reference_id is required" if customer_reference_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :customer_reference_id => customer_reference_id, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/{siteSubdomain}/{customerReferenceId}/subscriptions.{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'customerReferenceId' + '}', escapeString(customer_reference_id))
    .sub('{' + 'format' + '}', escapeString(format))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|SubscriptionResponse.new(response)}
  end

def self._add_subscription (site_subdomain,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/{siteSubdomain}.{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
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

def self._update_subscription (site_subdomain,subscription_id,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "subscription_id is required" if subscription_id.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :subscription_id => subscription_id, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/{siteSubdomain}/{subscriptionId}.{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
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
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    SubscriptionResponse.new(response)
  end

def self._delete_subscription (subscription_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id}.merge(opts)

    #resource path
    path = "/subscriptions/{subscriptionId}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make

  end

def self._get_address (subscription_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/{subscriptionId}/billing-address.{format}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'format' + '}', escapeString(format))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    AddressResponse.new(response)
  end

def self._get_customers_for_product (subscription_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/{subscriptionId}/customers.{format}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'format' + '}', escapeString(format))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|CustomerResponse.new(response)}
  end

def self._add_charge_to_subscription (subscription_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :body => body}.merge(opts)

    #resource path
    path = "/subscriptions/charge/{subscriptionId}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))


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
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TransactionResponse.new(response)
  end

def self._refund (subscription_id,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :body => body}.merge(opts)

    #resource path
    path = "/subscriptions/{subscriptionId}/refunds".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))


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
    response = Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    TransactionResponse.new(response)
  end

def self._adjust_subscription_balance (subscription_id,is_amount_absolute,body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "is_amount_absolute is required" if is_amount_absolute.nil?
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :is_amount_absolute => is_amount_absolute, :body => body}.merge(opts)

    #resource path
    path = "/subscriptions/adjustbalance/{subscriptionId}/{isAmountAbsolute}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'isAmountAbsolute' + '}', escapeString(is_amount_absolute))


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
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make

  end

def self._change_subscription_product (subscription_id,new_product_pricing_plan_id,set_next_billing_to_now,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "new_product_pricing_plan_id is required" if new_product_pricing_plan_id.nil?
    raise "set_next_billing_to_now is required" if set_next_billing_to_now.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :new_product_pricing_plan_id => new_product_pricing_plan_id, :set_next_billing_to_now => set_next_billing_to_now, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/changeproduct/{subscriptionId}/{newProductPricingPlanId}/{setNextBillingToNow}.{format}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'newProductPricingPlanId' + '}', escapeString(new_product_pricing_plan_id))
    .sub('{' + 'setNextBillingToNow' + '}', escapeString(set_next_billing_to_now))
    .sub('{' + 'format' + '}', escapeString(format))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make

  end

def self._upgrade_downgrade_subscription_product (subscription_id,new_product_pricing_plan_id,include_trial,include_upfront_charge,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "new_product_pricing_plan_id is required" if new_product_pricing_plan_id.nil?
    raise "include_trial is required" if include_trial.nil?
    raise "include_upfront_charge is required" if include_upfront_charge.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :new_product_pricing_plan_id => new_product_pricing_plan_id, :include_trial => include_trial, :include_upfront_charge => include_upfront_charge, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/upgradedowngrade/{subscriptionId}/{newProductPricingPlanId}/{includeTrial}/{includeUpfrontCharge}.{format}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'newProductPricingPlanId' + '}', escapeString(new_product_pricing_plan_id))
    .sub('{' + 'includeTrial' + '}', escapeString(include_trial))
    .sub('{' + 'includeUpfrontCharge' + '}', escapeString(include_upfront_charge))
    .sub('{' + 'format' + '}', escapeString(format))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make

  end

def self._cancel_subscription (subscription_id,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/{subscriptionId}/cancel".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
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
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make

  end

def self._reactivate_subscription (subscription_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id}.merge(opts)

    #resource path
    path = "/subscriptions/reactivate/{subscriptionId}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make

  end

def self._add_subscription_items (body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :body => body}.merge(opts)

    #resource path
    path = "/subscriptions/additems".sub('{format}','json')

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
    Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make

  end

def self._update_subscription_items (body,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    # set default values and merge with input
    options = { :body => body}.merge(opts)

    #resource path
    path = "/subscriptions/updateitems".sub('{format}','json')

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
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make

  end

def self._get_subscription_items (subscription_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id, :format => format}.merge(opts)

    #resource path
    path = "/subscriptions/items/{subscriptionId}.{format}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))
    .sub('{' + 'format' + '}', escapeString(format))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|SubscriptionItemResponse.new(response)}
  end

def self._reset_subscription_metered_items (subscription_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id}.merge(opts)

    #resource path
    path = "/subscriptions/resetmetered/{subscriptionId}".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make

  end

def self._get_self_service_page_url (subscription_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "subscription_id is required" if subscription_id.nil?
    # set default values and merge with input
    options = { :subscription_id => subscription_id}.merge(opts)

    #resource path
    path = "/subscriptions/{subscriptionId}/selfServiceUrl".sub('{format}','json').sub('{' + 'subscriptionId' + '}', escapeString(subscription_id))


    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end

    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    String.new(response)
  end

end

