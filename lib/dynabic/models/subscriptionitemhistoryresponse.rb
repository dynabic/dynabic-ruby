class SubscriptionItemHistoryResponse
  attr_accessor :update_on, :new_value, :description, :old_value

  # :internal => :external
  def self.attribute_map
  {
      :update_on => :update_on, :new_value => :new_value, :description => :description, :old_value => :old_value

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SubscriptionItemHistoryResponse.attribute_map["update_on".to_sym] != nil
        name = "update_on".to_sym
        value = attributes["update_on"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionItemHistoryResponse.attribute_map["new_value".to_sym] != nil
        name = "new_value".to_sym
        value = attributes["new_value"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionItemHistoryResponse.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionItemHistoryResponse.attribute_map["old_value".to_sym] != nil
        name = "old_value".to_sym
        value = attributes["old_value"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SubscriptionItemHistoryResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

