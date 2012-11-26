class CreditCardRequest
  attr_accessor :card_number, :expiration_date, :cvv, :last_name_on_card, :first_name_on_card

  # :internal => :external
  def self.attribute_map
  {
      :card_number => :card_number, :expiration_date => :expiration_date, :cvv => :cvv, :last_name_on_card => :last_name_on_card, :first_name_on_card => :first_name_on_card

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CreditCardRequest.attribute_map["card_number".to_sym] != nil
        name = "card_number".to_sym
        value = attributes["card_number"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardRequest.attribute_map["expiration_date".to_sym] != nil
        name = "expiration_date".to_sym
        value = attributes["expiration_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardRequest.attribute_map["cvv".to_sym] != nil
        name = "cvv".to_sym
        value = attributes["cvv"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardRequest.attribute_map["last_name_on_card".to_sym] != nil
        name = "last_name_on_card".to_sym
        value = attributes["last_name_on_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CreditCardRequest.attribute_map["first_name_on_card".to_sym] != nil
        name = "first_name_on_card".to_sym
        value = attributes["first_name_on_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CreditCardRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

