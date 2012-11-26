require "uri"

class Productfamily_api
  basePath = "https://api.dynabic.com/Billing"
  # apiInvoker = APIInvoker

  def self.escapeString(string)
    URI.encode(string.to_s)
  end

  def self._get_product_families (site_subdomain,format,is_archived,page_number,page_size,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "format is required" if format.nil?
    raise "is_archived is required" if is_archived.nil?
    raise "page_number is required" if page_number.nil?
    raise "page_size is required" if page_size.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :format => format, :is_archived => is_archived, :page_number => page_number, :page_size => page_size}.merge(opts)

    #resource path
    path = "/productfamily/{siteSubdomain}/{format}?isArchived={isArchived}&amp;pageNumber={pageNumber}&amp;pageSize={pageSize}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'format' + '}', escapeString(format))
    .sub('{' + 'isArchived' + '}', escapeString(is_archived))
    .sub('{' + 'pageNumber' + '}', escapeString(page_number))
    .sub('{' + 'pageSize' + '}', escapeString(page_size))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    response.map {|response|ProductFamilyResponse.new(response)}
  end

def self._get_product_family_by_id (product_family_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "product_family_id is required" if product_family_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :product_family_id => product_family_id, :format => format}.merge(opts)

    #resource path
    path = "/productfamily/{productFamilyId}.{format}".sub('{format}','json').sub('{' + 'productFamilyId' + '}', escapeString(product_family_id))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ProductFamilyResponse.new(response)
  end

def self._get_product_family_by_name (site_subdomain,product_family_name,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "site_subdomain is required" if site_subdomain.nil?
    raise "product_family_name is required" if product_family_name.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :site_subdomain => site_subdomain, :product_family_name => product_family_name, :format => format}.merge(opts)

    #resource path
    path = "/productfamily/{siteSubdomain}/[{productFamilyName}].{format}".sub('{format}','json').sub('{' + 'siteSubdomain' + '}', escapeString(site_subdomain))
    .sub('{' + 'productFamilyName' + '}', escapeString(product_family_name))
    .sub('{' + 'format' + '}', escapeString(format))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :body=>post_body }).make.body
    ProductFamilyResponse.new(response)
  end

def self._add_product_family (body,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :body => body, :format => format}.merge(opts)

    #resource path
    path = "/productfamily/{format}".sub('{format}','json').sub('{' + 'format' + '}', escapeString(format))
    
    
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
    ProductFamilyResponse.new(response)
  end

def self._update_product_family (body,product_family_id,format,opts={})
    query_param_keys = []

    # verify existence of params
    raise "body is required" if body.nil?
    raise "product_family_id is required" if product_family_id.nil?
    raise "format is required" if format.nil?
    # set default values and merge with input
    options = { :body => body, :product_family_id => product_family_id, :format => format}.merge(opts)

    #resource path
    path = "/productfamily/{productFamilyId}.{format}".sub('{format}','json').sub('{' + 'productFamilyId' + '}', escapeString(product_family_id))
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
    ProductFamilyResponse.new(response)
  end

def self._delete_product_family (product_family_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "product_family_id is required" if product_family_id.nil?
    # set default values and merge with input
    options = { :product_family_id => product_family_id}.merge(opts)

    #resource path
    path = "/productfamily/{productFamilyId}".sub('{format}','json').sub('{' + 'productFamilyId' + '}', escapeString(product_family_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:DELETE, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    
  end

def self._archive_product_family (product_family_id,opts={})
    query_param_keys = []

    # verify existence of params
    raise "product_family_id is required" if product_family_id.nil?
    # set default values and merge with input
    options = { :product_family_id => product_family_id}.merge(opts)

    #resource path
    path = "/productfamily/archive/{productFamilyId}".sub('{format}','json').sub('{' + 'productFamilyId' + '}', escapeString(product_family_id))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    
  end

def self._activate_product_family (product_family_id,activate_products,opts={})
    query_param_keys = []

    # verify existence of params
    raise "product_family_id is required" if product_family_id.nil?
    raise "activate_products is required" if activate_products.nil?
    # set default values and merge with input
    options = { :product_family_id => product_family_id, :activate_products => activate_products}.merge(opts)

    #resource path
    path = "/productfamily/activate/{productFamilyId}?activateProducts={activateProducts}".sub('{format}','json').sub('{' + 'productFamilyId' + '}', escapeString(product_family_id))
    .sub('{' + 'activateProducts' + '}', escapeString(activate_products))
    
    
    # pull querystring keys from options
    queryopts = options.select do |key,value|
      query_param_keys.include? key
    end
    
    headers = nil
    post_body = nil
    Swagger::Request.new(:PUT, path, {:params=>queryopts,:headers=>headers, :body=>post_body}).make
    
  end

end

