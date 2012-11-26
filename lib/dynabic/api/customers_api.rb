require "uri"

class Customers_api
  basePath = "https://api.dynabic.com/Billing"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_all_customers (site_subdomain,format,page_number,page_size,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "format is required" if format.nil?
    raise "page_number is required" if page_number.nil?
    raise "page_size is required" if page_size.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :format => format, :page_number => page_number, :page_size => page_size}.merge(opts)

    #resource path
    path = "/customers/{siteSubdomain}.{format}?pageNumber={pageNumber}&amp;pageSize={pageSize}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
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
    response.map {|response|CustomerResponse.new(response)}
  end

def self._get_customer (customer_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/byid/{customerId}.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CustomerResponse.new(response)
  end

def self._get_customer_by_reference_id (site_subdomain,reference_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "reference_id is required" if reference_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :reference_id => reference_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/{siteSubdomain}/reference-id/{referenceId}.{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'referenceId' + '}', escapeString(reference_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CustomerResponse.new(response)
  end

def self._add_customer (site_subdomain,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/customers/{siteSubdomain}.{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
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
    CustomerResponse.new(response)
  end

def self._update_customer (body,customer_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    raise "customer_id is required" if customer_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :body => body, :customer_id => customer_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/{customerId}.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
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
    CustomerResponse.new(response)
  end

def self._delete_customer (customer_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id}.merge(opts)

    #resource path
    path = "/customers/{customerId}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    
  end

def self._get_credit_card (credit_card_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "credit_card_id is required" if credit_card_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :credit_card_id => credit_card_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/credit-card/{creditCardId}.{format}".sub('{format}','json').sub('{' + 'creditCardId' + '}', escapeString(credit_card_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CreditCardResponse.new(response)
  end

def self._get_credit_cards (customer_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/{customerId}/credit-cards.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|CreditCardResponse.new(response)}
  end

def self._get_credit_cards_by_reference_id (site_subdomain,customer_reference_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "customer_reference_id is required" if customer_reference_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :customer_reference_id => customer_reference_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/{siteSubdomain}/reference-id/{customerReferenceId}/credit-cards.{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'customerReferenceId' + '}', escapeString(customer_reference_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|CreditCardResponse.new(response)}
  end

def self._get_customers_first_credit_card (customer_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/{customerId}/credit-card.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CreditCardResponse.new(response)
  end

def self._get_first_credit_card_for_customer_by_reference_id (site_subdomain,customer_reference_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "customer_reference_id is required" if customer_reference_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :customer_reference_id => customer_reference_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/{siteSubdomain}/reference-id/{customerReferenceId}/credit-card.{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'customerReferenceId' + '}', escapeString(customer_reference_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    CreditCardResponse.new(response)
  end

def self._add_credit_card (customer_id,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/customers/{customerId}/credit-card.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
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
    CreditCardResponse.new(response)
  end

def self._update_credit_card (customer_id,credit_card_id,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "credit_card_id is required" if credit_card_id.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :credit_card_id => credit_card_id, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/customers/{customerId}/credit-card/{creditCardId}.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'creditCardId' + '}', escapeString(credit_card_id))
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
    CreditCardResponse.new(response)
  end

def self._update_credit_card_by_customer_reference_id (site_subdomanin,customer_reference_id,credit_card_id,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomanin is required" if site_subdomanin.nil?
    raise "customer_reference_id is required" if customer_reference_id.nil?
    raise "credit_card_id is required" if credit_card_id.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomanin => site_subdomanin, :customer_reference_id => customer_reference_id, :credit_card_id => credit_card_id, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/customers/{siteSubdomanin}/reference-id/{customerReferenceId}/credit-card/{creditCardId}.{format}".sub('{format}','json').sub('{' + 'siteSubdomanin' + '}', escapeString(site_subdomanin))
    .sub('{' + 'customerReferenceId' + '}', escapeString(customer_reference_id))
    .sub('{' + 'creditCardId' + '}', escapeString(credit_card_id))
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
    CreditCardResponse.new(response)
  end

def self._delete_credit_card (customer_id,credit_card_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "credit_card_id is required" if credit_card_id.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :credit_card_id => credit_card_id}.merge(opts)

    #resource path
    path = "/customers/{customerId}/credit-card/{creditCardId}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'creditCardId' + '}', escapeString(credit_card_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    
  end

def self._get_billing_addresses (customer_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/{customerId}/billing-addresses.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|AddressResponse.new(response)}
  end

def self._get_billing_address (customer_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/{customerId}/first-billing-address.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
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

def self._get_first_billing_address_for_customer_by_reference_id (site_subdomain,customer_reference_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "customer_reference_id is required" if customer_reference_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :customer_reference_id => customer_reference_id, :format => format}.merge(opts)

    #resource path
    path = "/customers/{siteSubdomain}/reference-id/{customerReferenceId}/first-billing-address.{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'customerReferenceId' + '}', escapeString(customer_reference_id))
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

def self._add_billing_address (customer_id,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/customers/{customerId}/billing-address.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
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
    AddressResponse.new(response)
  end

def self._update_billing_address (customer_id,billing_address_id,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "billing_address_id is required" if billing_address_id.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :billing_address_id => billing_address_id, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/customers/{customerId}/billing-address/{billingAddressId}.{format}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'billingAddressId' + '}', escapeString(billing_address_id))
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
    AddressResponse.new(response)
  end

def self._update_billing_address_by_customer_reference_id (site_subdomain,customer_reference_id,billing_address_id,body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "customer_reference_id is required" if customer_reference_id.nil?
    raise "billing_address_id is required" if billing_address_id.nil?
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :customer_reference_id => customer_reference_id, :billing_address_id => billing_address_id, :body => body, :format => format}.merge(opts)

    #resource path
    path = "/customers/{siteSubdomain}/reference-id/{customerReferenceId}/billing-address/{billingAddressId}.{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'customerReferenceId' + '}', escapeString(customer_reference_id))
    .sub('{' + 'billingAddressId' + '}', escapeString(billing_address_id))
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
    AddressResponse.new(response)
  end

def self._delete_billing_address (customer_id,billing_address_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "customer_id is required" if customer_id.nil?
    raise "billing_address_id is required" if billing_address_id.nil?
    # set default values and merge with input
    options = { :customer_id => customer_id, :billing_address_id => billing_address_id}.merge(opts)

    #resource path
    path = "/customers/{customerId}/billing-address/{billingAddressId}".sub('{format}','json').sub('{' + 'customerId' + '}', escapeString(customer_id))
    .sub('{' + 'billingAddressId' + '}', escapeString(billing_address_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    
  end

end

