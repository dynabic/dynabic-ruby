class StatementDetail
  attr_accessor :amount, :id, :currency_id, :details, :type, :date, :statement_id

  # :internal => :external
  def self.attribute_map
  {
      :amount => :amount, :id => :id, :currency_id => :currency_id, :details => :details, :type => :type, :date => :date, :statement_id => :statement_id

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if StatementDetail.attribute_map["amount".to_sym] != nil
        name = "amount".to_sym
        value = attributes["amount"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StatementDetail.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StatementDetail.attribute_map["currency_id".to_sym] != nil
        name = "currency_id".to_sym
        value = attributes["currency_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StatementDetail.attribute_map["details".to_sym] != nil
        name = "details".to_sym
        value = attributes["details"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StatementDetail.attribute_map["type".to_sym] != nil
        name = "type".to_sym
        value = attributes["type"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StatementDetail.attribute_map["date".to_sym] != nil
        name = "date".to_sym
        value = attributes["date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if StatementDetail.attribute_map["statement_id".to_sym] != nil
        name = "statement_id".to_sym
        value = attributes["statement_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    StatementDetail.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

