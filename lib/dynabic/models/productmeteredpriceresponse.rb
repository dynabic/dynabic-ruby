class ProductMeteredPriceResponse
  attr_accessor :id, :end_quantity, :product_item_id, :start_quantity, :description, :unit_price

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :end_quantity => :end_quantity, :product_item_id => :product_item_id, :start_quantity => :start_quantity, :description => :description, :unit_price => :unit_price

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ProductMeteredPriceResponse.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductMeteredPriceResponse.attribute_map["end_quantity".to_sym] != nil
        name = "end_quantity".to_sym
        value = attributes["end_quantity"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductMeteredPriceResponse.attribute_map["product_item_id".to_sym] != nil
        name = "product_item_id".to_sym
        value = attributes["product_item_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductMeteredPriceResponse.attribute_map["start_quantity".to_sym] != nil
        name = "start_quantity".to_sym
        value = attributes["start_quantity"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductMeteredPriceResponse.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductMeteredPriceResponse.attribute_map["unit_price".to_sym] != nil
        name = "unit_price".to_sym
        value = attributes["unit_price"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ProductMeteredPriceResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

