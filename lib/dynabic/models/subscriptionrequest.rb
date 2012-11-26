class SubscriptionRequest
  attr_accessor :product_id, :is_cancelled_at_end_of_period, :next_product, :next_product_pricing_plan, :customer, :next_assesment, :cancellation_details, :currency, :billing_address_id, :product, :product_pricing_plan, :end_date, :credit_card_id, :credit_card, :current_ballance, :pricing_plan_id, :start_date, :customer_id, :billing_address, :subscription_items

  # :internal => :external
  def self.attribute_map
  {
      :product_id => :product_id, :is_cancelled_at_end_of_period => :is_cancelled_at_end_of_period, :next_product => :next_product, :next_product_pricing_plan => :next_product_pricing_plan, :customer => :customer, :next_assesment => :next_assesment, :cancellation_details => :cancellation_details, :currency => :currency, :billing_address_id => :billing_address_id, :product => :product, :product_pricing_plan => :product_pricing_plan, :end_date => :end_date, :credit_card_id => :credit_card_id, :credit_card => :credit_card, :current_ballance => :current_ballance, :pricing_plan_id => :pricing_plan_id, :start_date => :start_date, :customer_id => :customer_id, :billing_address => :billing_address, :subscription_items => :subscription_items

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SubscriptionRequest.attribute_map["product_id".to_sym] != nil
        name = "product_id".to_sym
        value = attributes["product_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["is_cancelled_at_end_of_period".to_sym] != nil
        name = "is_cancelled_at_end_of_period".to_sym
        value = attributes["is_cancelled_at_end_of_period"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["next_product".to_sym] != nil
        name = "next_product".to_sym
        value = attributes["next_product"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["next_product_pricing_plan".to_sym] != nil
        name = "next_product_pricing_plan".to_sym
        value = attributes["next_product_pricing_plan"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["customer".to_sym] != nil
        name = "customer".to_sym
        value = attributes["customer"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["next_assesment".to_sym] != nil
        name = "next_assesment".to_sym
        value = attributes["next_assesment"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["cancellation_details".to_sym] != nil
        name = "cancellation_details".to_sym
        value = attributes["cancellation_details"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["currency".to_sym] != nil
        name = "currency".to_sym
        value = attributes["currency"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["billing_address_id".to_sym] != nil
        name = "billing_address_id".to_sym
        value = attributes["billing_address_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["product".to_sym] != nil
        name = "product".to_sym
        value = attributes["product"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["product_pricing_plan".to_sym] != nil
        name = "product_pricing_plan".to_sym
        value = attributes["product_pricing_plan"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["end_date".to_sym] != nil
        name = "end_date".to_sym
        value = attributes["end_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["credit_card_id".to_sym] != nil
        name = "credit_card_id".to_sym
        value = attributes["credit_card_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["credit_card".to_sym] != nil
        name = "credit_card".to_sym
        value = attributes["credit_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["current_ballance".to_sym] != nil
        name = "current_ballance".to_sym
        value = attributes["current_ballance"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["pricing_plan_id".to_sym] != nil
        name = "pricing_plan_id".to_sym
        value = attributes["pricing_plan_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["start_date".to_sym] != nil
        name = "start_date".to_sym
        value = attributes["start_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["customer_id".to_sym] != nil
        name = "customer_id".to_sym
        value = attributes["customer_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["billing_address".to_sym] != nil
        name = "billing_address".to_sym
        value = attributes["billing_address"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionRequest.attribute_map["subscription_items".to_sym] != nil
        name = "subscription_items".to_sym
        value = attributes["subscription_items"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push SubscriptionItemRequest.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    SubscriptionRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

