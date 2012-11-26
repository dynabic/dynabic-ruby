class AddressResponse
  attr_accessor :fax_number, :state_province, :phone_number, :created_on, :address1, :address2, :country, :city, :id, :first_name, :email, :company, :last_name, :updated_on, :zip_postal_code, :customer_id

  # :internal => :external
  def self.attribute_map
  {
      :fax_number => :fax_number, :state_province => :state_province, :phone_number => :phone_number, :created_on => :created_on, :address1 => :address1, :address2 => :address2, :country => :country, :city => :city, :id => :id, :first_name => :first_name, :email => :email, :company => :company, :last_name => :last_name, :updated_on => :updated_on, :zip_postal_code => :zip_postal_code, :customer_id => :customer_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if AddressResponse.attribute_map["fax_number".to_sym] != nil
        name = "fax_number".to_sym
        value = attributes["fax_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["state_province".to_sym] != nil
        name = "state_province".to_sym
        value = attributes["state_province"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["phone_number".to_sym] != nil
        name = "phone_number".to_sym
        value = attributes["phone_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["created_on".to_sym] != nil
        name = "created_on".to_sym
        value = attributes["created_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["address1".to_sym] != nil
        name = "address1".to_sym
        value = attributes["address1"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["address2".to_sym] != nil
        name = "address2".to_sym
        value = attributes["address2"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["country".to_sym] != nil
        name = "country".to_sym
        value = attributes["country"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["city".to_sym] != nil
        name = "city".to_sym
        value = attributes["city"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["first_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["email".to_sym] != nil
        name = "email".to_sym
        value = attributes["email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["company".to_sym] != nil
        name = "company".to_sym
        value = attributes["company"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["last_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["updated_on".to_sym] != nil
        name = "updated_on".to_sym
        value = attributes["updated_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["zip_postal_code".to_sym] != nil
        name = "zip_postal_code".to_sym
        value = attributes["zip_postal_code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if AddressResponse.attribute_map["customer_id".to_sym] != nil
        name = "customer_id".to_sym
        value = attributes["customer_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    AddressResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

