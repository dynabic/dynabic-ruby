class Address
  attr_accessor :_updated_on, :_phone_number, :_state_province_id, :_last_name, :_city, :_email, :_customer_id, :_address2, :_fax_number, :_address1, :_created_on, :_country_id, :_is_billing_address, :_first_name, :_id, :_company, :_zip_postal_code

  # :internal => :external
  def self.attribute_map
  {
      :_updated_on => :UpdatedOn, :_phone_number => :PhoneNumber, :_state_province_id => :StateProvinceId, :_last_name => :LastName, :_city => :City, :_email => :Email, :_customer_id => :CustomerId, :_address2 => :Address2, :_fax_number => :FaxNumber, :_address1 => :Address1, :_created_on => :CreatedOn, :_country_id => :CountryId, :_is_billing_address => :IsBillingAddress, :_first_name => :FirstName, :_id => :Id, :_company => :Company, :_zip_postal_code => :ZipPostalCode

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Address.attribute_map["_updated_on".to_sym] != nil
        name = "_updated_on".to_sym
        value = attributes["UpdatedOn"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_phone_number".to_sym] != nil
        name = "_phone_number".to_sym
        value = attributes["PhoneNumber"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_state_province_id".to_sym] != nil
        name = "_state_province_id".to_sym
        value = attributes["StateProvinceId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_last_name".to_sym] != nil
        name = "_last_name".to_sym
        value = attributes["LastName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_city".to_sym] != nil
        name = "_city".to_sym
        value = attributes["City"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_email".to_sym] != nil
        name = "_email".to_sym
        value = attributes["Email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_customer_id".to_sym] != nil
        name = "_customer_id".to_sym
        value = attributes["CustomerId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_address2".to_sym] != nil
        name = "_address2".to_sym
        value = attributes["Address2"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_fax_number".to_sym] != nil
        name = "_fax_number".to_sym
        value = attributes["FaxNumber"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_address1".to_sym] != nil
        name = "_address1".to_sym
        value = attributes["Address1"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_created_on".to_sym] != nil
        name = "_created_on".to_sym
        value = attributes["CreatedOn"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_country_id".to_sym] != nil
        name = "_country_id".to_sym
        value = attributes["CountryId"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_is_billing_address".to_sym] != nil
        name = "_is_billing_address".to_sym
        value = attributes["IsBillingAddress"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_first_name".to_sym] != nil
        name = "_first_name".to_sym
        value = attributes["FirstName"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_id".to_sym] != nil
        name = "_id".to_sym
        value = attributes["Id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_company".to_sym] != nil
        name = "_company".to_sym
        value = attributes["Company"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Address.attribute_map["_zip_postal_code".to_sym] != nil
        name = "_zip_postal_code".to_sym
        value = attributes["ZipPostalCode"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Address.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

