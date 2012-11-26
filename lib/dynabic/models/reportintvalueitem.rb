class ReportIntValueItem
  attr_accessor :value, :date

  # :internal => :external
  def self.attribute_map
  {
      :value => :value, :date => :date

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ReportIntValueItem.attribute_map["value".to_sym] != nil
        name = "value".to_sym
        value = attributes["value"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ReportIntValueItem.attribute_map["date".to_sym] != nil
        name = "date".to_sym
        value = attributes["date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ReportIntValueItem.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

