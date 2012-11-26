class PricingPlanResponse
  attr_accessor :id, :product_id, :trial_period_duration_days, :trial_period_charge, :name, :upfront_charge, :product_items, :pricing_plan_payment_schedules, :currency_code

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :product_id => :product_id, :trial_period_duration_days => :trial_period_duration_days, :trial_period_charge => :trial_period_charge, :name => :name, :upfront_charge => :upfront_charge, :product_items => :product_items, :pricing_plan_payment_schedules => :pricing_plan_payment_schedules, :currency_code => :currency_code

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if PricingPlanResponse.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if PricingPlanResponse.attribute_map["product_id".to_sym] != nil
        name = "product_id".to_sym
        value = attributes["product_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if PricingPlanResponse.attribute_map["trial_period_duration_days".to_sym] != nil
        name = "trial_period_duration_days".to_sym
        value = attributes["trial_period_duration_days"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if PricingPlanResponse.attribute_map["trial_period_charge".to_sym] != nil
        name = "trial_period_charge".to_sym
        value = attributes["trial_period_charge"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if PricingPlanResponse.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if PricingPlanResponse.attribute_map["upfront_charge".to_sym] != nil
        name = "upfront_charge".to_sym
        value = attributes["upfront_charge"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if PricingPlanResponse.attribute_map["product_items".to_sym] != nil
        name = "product_items".to_sym
        value = attributes["product_items"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ProductItemResponse.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if PricingPlanResponse.attribute_map["pricing_plan_payment_schedules".to_sym] != nil
        name = "pricing_plan_payment_schedules".to_sym
        value = attributes["pricing_plan_payment_schedules"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ProductPricingPlanPaymentScheduleResponse.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if PricingPlanResponse.attribute_map["currency_code".to_sym] != nil
        name = "currency_code".to_sym
        value = attributes["currency_code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    PricingPlanResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

