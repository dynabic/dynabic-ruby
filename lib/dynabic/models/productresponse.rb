class ProductResponse
  attr_accessor :id, :is_billing_address_at_signup_required, :is_credit_card_at_signup_required, :pricing_plans, :description, :accounting_code, :api_reference1, :name, :product_family_id, :is_archived

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :is_billing_address_at_signup_required => :is_billing_address_at_signup_required, :is_credit_card_at_signup_required => :is_credit_card_at_signup_required, :pricing_plans => :pricing_plans, :description => :description, :accounting_code => :accounting_code, :api_reference1 => :api_reference1, :name => :name, :product_family_id => :product_family_id, :is_archived => :is_archived

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ProductResponse.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductResponse.attribute_map["is_billing_address_at_signup_required".to_sym] != nil
        name = "is_billing_address_at_signup_required".to_sym
        value = attributes["is_billing_address_at_signup_required"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductResponse.attribute_map["is_credit_card_at_signup_required".to_sym] != nil
        name = "is_credit_card_at_signup_required".to_sym
        value = attributes["is_credit_card_at_signup_required"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductResponse.attribute_map["pricing_plans".to_sym] != nil
        name = "pricing_plans".to_sym
        value = attributes["pricing_plans"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push PricingPlanResponse.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if ProductResponse.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductResponse.attribute_map["accounting_code".to_sym] != nil
        name = "accounting_code".to_sym
        value = attributes["accounting_code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductResponse.attribute_map["api_reference1".to_sym] != nil
        name = "api_reference1".to_sym
        value = attributes["api_reference1"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductResponse.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductResponse.attribute_map["product_family_id".to_sym] != nil
        name = "product_family_id".to_sym
        value = attributes["product_family_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductResponse.attribute_map["is_archived".to_sym] != nil
        name = "is_archived".to_sym
        value = attributes["is_archived"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ProductResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

