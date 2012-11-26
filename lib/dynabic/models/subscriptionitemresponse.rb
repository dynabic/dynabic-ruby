class SubscriptionItemResponse
  attr_accessor :subscription_id, :product_item_id, :quantity, :update_history

  # :internal => :external
  def self.attribute_map
  {
      :subscription_id => :subscription_id, :product_item_id => :product_item_id, :quantity => :quantity, :update_history => :update_history

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SubscriptionItemResponse.attribute_map["subscription_id".to_sym] != nil
        name = "subscription_id".to_sym
        value = attributes["subscription_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionItemResponse.attribute_map["product_item_id".to_sym] != nil
        name = "product_item_id".to_sym
        value = attributes["product_item_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionItemResponse.attribute_map["quantity".to_sym] != nil
        name = "quantity".to_sym
        value = attributes["quantity"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionItemResponse.attribute_map["update_history".to_sym] != nil
        name = "update_history".to_sym
        value = attributes["update_history"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SubscriptionItemHistoryResponse.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SubscriptionItemResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

