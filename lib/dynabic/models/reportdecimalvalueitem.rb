class ReportDecimalValueItem
  attr_accessor :value, :date, :currency_code

  # :internal => :external
  def self.attribute_map
  {
      :value => :value, :date => :date, :currency_code => :currency_code

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ReportDecimalValueItem.attribute_map["value".to_sym] != nil
        name = "value".to_sym
        value = attributes["value"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReportDecimalValueItem.attribute_map["date".to_sym] != nil
        name = "date".to_sym
        value = attributes["date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReportDecimalValueItem.attribute_map["currency_code".to_sym] != nil
        name = "currency_code".to_sym
        value = attributes["currency_code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ReportDecimalValueItem.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

