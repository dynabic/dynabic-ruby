class SubscriptionResponse
  attr_accessor :signup_date, :product_id, :service_result, :next_product, :customer, :next_assesment, :cancellation_details, :billing_address_id, :currency, :product_pricing_plan, :id, :end_date, :credit_card, :current_ballance, :revenue, :status, :is_cancelled_at_end_of_period, :next_product_pricing_plan, :cancellation_date, :product, :credit_card_id, :is_trial, :pricing_plan_id, :start_date, :customer_id, :billing_address

  # :internal => :external
  def self.attribute_map
  {
      :signup_date => :signup_date, :product_id => :product_id, :service_result => :service_result, :next_product => :next_product, :customer => :customer, :next_assesment => :next_assesment, :cancellation_details => :cancellation_details, :billing_address_id => :billing_address_id, :currency => :currency, :product_pricing_plan => :product_pricing_plan, :id => :id, :end_date => :end_date, :credit_card => :credit_card, :current_ballance => :current_ballance, :revenue => :revenue, :status => :status, :is_cancelled_at_end_of_period => :is_cancelled_at_end_of_period, :next_product_pricing_plan => :next_product_pricing_plan, :cancellation_date => :cancellation_date, :product => :product, :credit_card_id => :credit_card_id, :is_trial => :is_trial, :pricing_plan_id => :pricing_plan_id, :start_date => :start_date, :customer_id => :customer_id, :billing_address => :billing_address

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SubscriptionResponse.attribute_map["signup_date".to_sym] != nil
        name = "signup_date".to_sym
        value = attributes["signup_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["product_id".to_sym] != nil
        name = "product_id".to_sym
        value = attributes["product_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["service_result".to_sym] != nil
        name = "service_result".to_sym
        value = attributes["service_result"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["next_product".to_sym] != nil
        name = "next_product".to_sym
        value = attributes["next_product"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["customer".to_sym] != nil
        name = "customer".to_sym
        value = attributes["customer"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["next_assesment".to_sym] != nil
        name = "next_assesment".to_sym
        value = attributes["next_assesment"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["cancellation_details".to_sym] != nil
        name = "cancellation_details".to_sym
        value = attributes["cancellation_details"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["billing_address_id".to_sym] != nil
        name = "billing_address_id".to_sym
        value = attributes["billing_address_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["currency".to_sym] != nil
        name = "currency".to_sym
        value = attributes["currency"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["product_pricing_plan".to_sym] != nil
        name = "product_pricing_plan".to_sym
        value = attributes["product_pricing_plan"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["end_date".to_sym] != nil
        name = "end_date".to_sym
        value = attributes["end_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["credit_card".to_sym] != nil
        name = "credit_card".to_sym
        value = attributes["credit_card"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["current_ballance".to_sym] != nil
        name = "current_ballance".to_sym
        value = attributes["current_ballance"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["revenue".to_sym] != nil
        name = "revenue".to_sym
        value = attributes["revenue"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["is_cancelled_at_end_of_period".to_sym] != nil
        name = "is_cancelled_at_end_of_period".to_sym
        value = attributes["is_cancelled_at_end_of_period"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["next_product_pricing_plan".to_sym] != nil
        name = "next_product_pricing_plan".to_sym
        value = attributes["next_product_pricing_plan"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["cancellation_date".to_sym] != nil
        name = "cancellation_date".to_sym
        value = attributes["cancellation_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["product".to_sym] != nil
        name = "product".to_sym
        value = attributes["product"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["credit_card_id".to_sym] != nil
        name = "credit_card_id".to_sym
        value = attributes["credit_card_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["is_trial".to_sym] != nil
        name = "is_trial".to_sym
        value = attributes["is_trial"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["pricing_plan_id".to_sym] != nil
        name = "pricing_plan_id".to_sym
        value = attributes["pricing_plan_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["start_date".to_sym] != nil
        name = "start_date".to_sym
        value = attributes["start_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["customer_id".to_sym] != nil
        name = "customer_id".to_sym
        value = attributes["customer_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SubscriptionResponse.attribute_map["billing_address".to_sym] != nil
        name = "billing_address".to_sym
        value = attributes["billing_address"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SubscriptionResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

