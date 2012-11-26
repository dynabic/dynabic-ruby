class ProductMeteredPriceRequest
  attr_accessor :id, :end_quantity, :start_quantity, :description, :unit_price

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :end_quantity => :end_quantity, :start_quantity => :start_quantity, :description => :description, :unit_price => :unit_price

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ProductMeteredPriceRequest.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductMeteredPriceRequest.attribute_map["end_quantity".to_sym] != nil
        name = "end_quantity".to_sym
        value = attributes["end_quantity"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductMeteredPriceRequest.attribute_map["start_quantity".to_sym] != nil
        name = "start_quantity".to_sym
        value = attributes["start_quantity"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductMeteredPriceRequest.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductMeteredPriceRequest.attribute_map["unit_price".to_sym] != nil
        name = "unit_price".to_sym
        value = attributes["unit_price"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ProductMeteredPriceRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

