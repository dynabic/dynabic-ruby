class CustomerRequest
  attr_accessor :shipping_address, :first_name, :phone, :email, :company, :shipping_address_id, :is_shipping_address_same_to_billing, :last_name, :reference

  # :internal => :external
  def self.attribute_map
  {
      :shipping_address => :shipping_address, :first_name => :first_name, :phone => :phone, :email => :email, :company => :company, :shipping_address_id => :shipping_address_id, :is_shipping_address_same_to_billing => :is_shipping_address_same_to_billing, :last_name => :last_name, :reference => :reference

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CustomerRequest.attribute_map["shipping_address".to_sym] != nil
        name = "shipping_address".to_sym
        value = attributes["shipping_address"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CustomerRequest.attribute_map["first_name".to_sym] != nil
        name = "first_name".to_sym
        value = attributes["first_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CustomerRequest.attribute_map["phone".to_sym] != nil
        name = "phone".to_sym
        value = attributes["phone"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CustomerRequest.attribute_map["email".to_sym] != nil
        name = "email".to_sym
        value = attributes["email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CustomerRequest.attribute_map["company".to_sym] != nil
        name = "company".to_sym
        value = attributes["company"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CustomerRequest.attribute_map["shipping_address_id".to_sym] != nil
        name = "shipping_address_id".to_sym
        value = attributes["shipping_address_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CustomerRequest.attribute_map["is_shipping_address_same_to_billing".to_sym] != nil
        name = "is_shipping_address_same_to_billing".to_sym
        value = attributes["is_shipping_address_same_to_billing"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CustomerRequest.attribute_map["last_name".to_sym] != nil
        name = "last_name".to_sym
        value = attributes["last_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CustomerRequest.attribute_map["reference".to_sym] != nil
        name = "reference".to_sym
        value = attributes["reference"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CustomerRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

