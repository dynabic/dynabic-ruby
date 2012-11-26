class ProductPricingPlanPaymentScheduleRequest
  attr_accessor :id, :frequency_recurrence_factor, :frequency_interval, :subscription_period_change, :name, :frequency_relative_interval, :frequency_type, :end_date_offset_days, :start_date_offset_days

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :frequency_recurrence_factor => :frequency_recurrence_factor, :frequency_interval => :frequency_interval, :subscription_period_change => :subscription_period_change, :name => :name, :frequency_relative_interval => :frequency_relative_interval, :frequency_type => :frequency_type, :end_date_offset_days => :end_date_offset_days, :start_date_offset_days => :start_date_offset_days

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ProductPricingPlanPaymentScheduleRequest.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductPricingPlanPaymentScheduleRequest.attribute_map["frequency_recurrence_factor".to_sym] != nil
        name = "frequency_recurrence_factor".to_sym
        value = attributes["frequency_recurrence_factor"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductPricingPlanPaymentScheduleRequest.attribute_map["frequency_interval".to_sym] != nil
        name = "frequency_interval".to_sym
        value = attributes["frequency_interval"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductPricingPlanPaymentScheduleRequest.attribute_map["subscription_period_change".to_sym] != nil
        name = "subscription_period_change".to_sym
        value = attributes["subscription_period_change"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductPricingPlanPaymentScheduleRequest.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductPricingPlanPaymentScheduleRequest.attribute_map["frequency_relative_interval".to_sym] != nil
        name = "frequency_relative_interval".to_sym
        value = attributes["frequency_relative_interval"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductPricingPlanPaymentScheduleRequest.attribute_map["frequency_type".to_sym] != nil
        name = "frequency_type".to_sym
        value = attributes["frequency_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductPricingPlanPaymentScheduleRequest.attribute_map["end_date_offset_days".to_sym] != nil
        name = "end_date_offset_days".to_sym
        value = attributes["end_date_offset_days"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductPricingPlanPaymentScheduleRequest.attribute_map["start_date_offset_days".to_sym] != nil
        name = "start_date_offset_days".to_sym
        value = attributes["start_date_offset_days"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ProductPricingPlanPaymentScheduleRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

