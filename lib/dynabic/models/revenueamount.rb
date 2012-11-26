class RevenueAmount
  attr_accessor :amount, :currency_code

  # :internal => :external
  def self.attribute_map
  {
      :amount => :amount, :currency_code => :currency_code

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if RevenueAmount.attribute_map["amount".to_sym] != nil
        name = "amount".to_sym
        value = attributes["amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if RevenueAmount.attribute_map["currency_code".to_sym] != nil
        name = "currency_code".to_sym
        value = attributes["currency_code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    RevenueAmount.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

