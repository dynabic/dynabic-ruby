class SubscriptionItemRequest
  attr_accessor :subscription_id, :product_item_id, :description, :quantity

  # :internal => :external
  def self.attribute_map
  {
      :subscription_id => :subscription_id, :product_item_id => :product_item_id, :description => :description, :quantity => :quantity

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SubscriptionItemRequest.attribute_map["subscription_id".to_sym] != nil
        name = "subscription_id".to_sym
        value = attributes["subscription_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionItemRequest.attribute_map["product_item_id".to_sym] != nil
        name = "product_item_id".to_sym
        value = attributes["product_item_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionItemRequest.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionItemRequest.attribute_map["quantity".to_sym] != nil
        name = "quantity".to_sym
        value = attributes["quantity"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SubscriptionItemRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

