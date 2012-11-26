class ProductsSignups
  attr_accessor :product, :signups, :product_id, :date

  # :internal => :external
  def self.attribute_map
  {
      :product => :product, :signups => :signups, :product_id => :product_id, :date => :date

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ProductsSignups.attribute_map["product".to_sym] != nil
        name = "product".to_sym
        value = attributes["product"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductsSignups.attribute_map["signups".to_sym] != nil
        name = "signups".to_sym
        value = attributes["signups"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductsSignups.attribute_map["product_id".to_sym] != nil
        name = "product_id".to_sym
        value = attributes["product_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductsSignups.attribute_map["date".to_sym] != nil
        name = "date".to_sym
        value = attributes["date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ProductsSignups.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

