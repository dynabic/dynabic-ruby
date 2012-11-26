class Statement
  attr_accessor :subscription_id, :status, :statement_date, :current_charges, :customer_first_name, :billing_address_id, :id, :statement_details, :customer_last_name, :starting_balance, :payments_and_credits, :email, :billing_start_date, :billing_end_date

  # :internal => :external
  def self.attribute_map
  {
      :subscription_id => :subscription_id, :status => :status, :statement_date => :statement_date, :current_charges => :current_charges, :customer_first_name => :customer_first_name, :billing_address_id => :billing_address_id, :id => :id, :statement_details => :statement_details, :customer_last_name => :customer_last_name, :starting_balance => :starting_balance, :payments_and_credits => :payments_and_credits, :email => :email, :billing_start_date => :billing_start_date, :billing_end_date => :billing_end_date

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if Statement.attribute_map["subscription_id".to_sym] != nil
        name = "subscription_id".to_sym
        value = attributes["subscription_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["status".to_sym] != nil
        name = "status".to_sym
        value = attributes["status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["statement_date".to_sym] != nil
        name = "statement_date".to_sym
        value = attributes["statement_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["current_charges".to_sym] != nil
        name = "current_charges".to_sym
        value = attributes["current_charges"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["customer_first_name".to_sym] != nil
        name = "customer_first_name".to_sym
        value = attributes["customer_first_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["billing_address_id".to_sym] != nil
        name = "billing_address_id".to_sym
        value = attributes["billing_address_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["statement_details".to_sym] != nil
        name = "statement_details".to_sym
        value = attributes["statement_details"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push StatementDetail.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if Statement.attribute_map["customer_last_name".to_sym] != nil
        name = "customer_last_name".to_sym
        value = attributes["customer_last_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["starting_balance".to_sym] != nil
        name = "starting_balance".to_sym
        value = attributes["starting_balance"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["payments_and_credits".to_sym] != nil
        name = "payments_and_credits".to_sym
        value = attributes["payments_and_credits"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["email".to_sym] != nil
        name = "email".to_sym
        value = attributes["email"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["billing_start_date".to_sym] != nil
        name = "billing_start_date".to_sym
        value = attributes["billing_start_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if Statement.attribute_map["billing_end_date".to_sym] != nil
        name = "billing_end_date".to_sym
        value = attributes["billing_end_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    Statement.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

