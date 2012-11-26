class ChargeRequest
  attr_accessor :amount, :memo

  # :internal => :external
  def self.attribute_map
  {
      :amount => :amount, :memo => :memo

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ChargeRequest.attribute_map["amount".to_sym] != nil
        name = "amount".to_sym
        value = attributes["amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ChargeRequest.attribute_map["memo".to_sym] != nil
        name = "memo".to_sym
        value = attributes["memo"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ChargeRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

