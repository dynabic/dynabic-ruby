class TransactionResponse
  attr_accessor :gateway_response_message, :subscription_id, :transaction_type, :service_result, :gateway_raw_response, :transaction_date, :settlement_attempts_count, :currency, :purchase_order_reference, :amount, :id, :last_settlement_attempt_date, :transaction_status, :refunded, :details, :subscription_balance, :gateway_raw_request, :gateway_transaction_id, :gateway_response_code, :gateway_response_description, :gateway_status, :gateway_ref_transaction_id, :gateway_settle_date

  # :internal => :external
  def self.attribute_map
  {
      :gateway_response_message => :gateway_response_message, :subscription_id => :subscription_id, :transaction_type => :transaction_type, :service_result => :service_result, :gateway_raw_response => :gateway_raw_response, :transaction_date => :transaction_date, :settlement_attempts_count => :settlement_attempts_count, :currency => :currency, :purchase_order_reference => :purchase_order_reference, :amount => :amount, :id => :id, :last_settlement_attempt_date => :last_settlement_attempt_date, :transaction_status => :transaction_status, :refunded => :refunded, :details => :details, :subscription_balance => :subscription_balance, :gateway_raw_request => :gateway_raw_request, :gateway_transaction_id => :gateway_transaction_id, :gateway_response_code => :gateway_response_code, :gateway_response_description => :gateway_response_description, :gateway_status => :gateway_status, :gateway_ref_transaction_id => :gateway_ref_transaction_id, :gateway_settle_date => :gateway_settle_date

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if TransactionResponse.attribute_map["gateway_response_message".to_sym] != nil
        name = "gateway_response_message".to_sym
        value = attributes["gateway_response_message"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["subscription_id".to_sym] != nil
        name = "subscription_id".to_sym
        value = attributes["subscription_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["transaction_type".to_sym] != nil
        name = "transaction_type".to_sym
        value = attributes["transaction_type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["service_result".to_sym] != nil
        name = "service_result".to_sym
        value = attributes["service_result"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["gateway_raw_response".to_sym] != nil
        name = "gateway_raw_response".to_sym
        value = attributes["gateway_raw_response"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["transaction_date".to_sym] != nil
        name = "transaction_date".to_sym
        value = attributes["transaction_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["settlement_attempts_count".to_sym] != nil
        name = "settlement_attempts_count".to_sym
        value = attributes["settlement_attempts_count"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["currency".to_sym] != nil
        name = "currency".to_sym
        value = attributes["currency"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["purchase_order_reference".to_sym] != nil
        name = "purchase_order_reference".to_sym
        value = attributes["purchase_order_reference"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["amount".to_sym] != nil
        name = "amount".to_sym
        value = attributes["amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["last_settlement_attempt_date".to_sym] != nil
        name = "last_settlement_attempt_date".to_sym
        value = attributes["last_settlement_attempt_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["transaction_status".to_sym] != nil
        name = "transaction_status".to_sym
        value = attributes["transaction_status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["refunded".to_sym] != nil
        name = "refunded".to_sym
        value = attributes["refunded"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["details".to_sym] != nil
        name = "details".to_sym
        value = attributes["details"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["subscription_balance".to_sym] != nil
        name = "subscription_balance".to_sym
        value = attributes["subscription_balance"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["gateway_raw_request".to_sym] != nil
        name = "gateway_raw_request".to_sym
        value = attributes["gateway_raw_request"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["gateway_transaction_id".to_sym] != nil
        name = "gateway_transaction_id".to_sym
        value = attributes["gateway_transaction_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["gateway_response_code".to_sym] != nil
        name = "gateway_response_code".to_sym
        value = attributes["gateway_response_code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["gateway_response_description".to_sym] != nil
        name = "gateway_response_description".to_sym
        value = attributes["gateway_response_description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["gateway_status".to_sym] != nil
        name = "gateway_status".to_sym
        value = attributes["gateway_status"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["gateway_ref_transaction_id".to_sym] != nil
        name = "gateway_ref_transaction_id".to_sym
        value = attributes["gateway_ref_transaction_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if TransactionResponse.attribute_map["gateway_settle_date".to_sym] != nil
        name = "gateway_settle_date".to_sym
        value = attributes["gateway_settle_date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    TransactionResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

