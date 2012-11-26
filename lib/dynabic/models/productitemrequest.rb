class ProductItemRequest
  attr_accessor :id, :product_item_id, :is_visible_on_hosted_page, :description, :charge_model, :name, :product_item_children, :unit_name, :metered_prices, :item_type

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :product_item_id => :product_item_id, :is_visible_on_hosted_page => :is_visible_on_hosted_page, :description => :description, :charge_model => :charge_model, :name => :name, :product_item_children => :product_item_children, :unit_name => :unit_name, :metered_prices => :metered_prices, :item_type => :item_type

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ProductItemRequest.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductItemRequest.attribute_map["product_item_id".to_sym] != nil
        name = "product_item_id".to_sym
        value = attributes["product_item_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductItemRequest.attribute_map["is_visible_on_hosted_page".to_sym] != nil
        name = "is_visible_on_hosted_page".to_sym
        value = attributes["is_visible_on_hosted_page"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductItemRequest.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductItemRequest.attribute_map["charge_model".to_sym] != nil
        name = "charge_model".to_sym
        value = attributes["charge_model"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductItemRequest.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductItemRequest.attribute_map["product_item_children".to_sym] != nil
        name = "product_item_children".to_sym
        value = attributes["product_item_children"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ProductItemRequest.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if ProductItemRequest.attribute_map["unit_name".to_sym] != nil
        name = "unit_name".to_sym
        value = attributes["unit_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductItemRequest.attribute_map["metered_prices".to_sym] != nil
        name = "metered_prices".to_sym
        value = attributes["metered_prices"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ProductMeteredPriceRequest.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if ProductItemRequest.attribute_map["item_type".to_sym] != nil
        name = "item_type".to_sym
        value = attributes["item_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ProductItemRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

