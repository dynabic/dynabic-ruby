class CreditCardResponse
  attr_accessor :id, :card_number, :status, :expiration_date, :cvv, :last_name_on_card, :first_name_on_card, :customer_id

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :card_number => :card_number, :status => :status, :expiration_date => :expiration_date, :cvv => :cvv, :last_name_on_card => :last_name_on_card, :first_name_on_card => :first_name_on_card, :customer_id => :customer_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CreditCardResponse.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardResponse.attribute_map["card_number".to_sym] != nil
        name = "card_number".to_sym
        value = attributes["card_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardResponse.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardResponse.attribute_map["expiration_date".to_sym] != nil
        name = "expiration_date".to_sym
        value = attributes["expiration_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardResponse.attribute_map["cvv".to_sym] != nil
        name = "cvv".to_sym
        value = attributes["cvv"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardResponse.attribute_map["last_name_on_card".to_sym] != nil
        name = "last_name_on_card".to_sym
        value = attributes["last_name_on_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardResponse.attribute_map["first_name_on_card".to_sym] != nil
        name = "first_name_on_card".to_sym
        value = attributes["first_name_on_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardResponse.attribute_map["customer_id".to_sym] != nil
        name = "customer_id".to_sym
        value = attributes["customer_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CreditCardResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

