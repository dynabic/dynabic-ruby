class ProductsRevenues
  attr_accessor :product, :product_id, :revenues, :date, :currency_code

  # :internal => :external
  def self.attribute_map
  {
      :product => :product, :product_id => :product_id, :revenues => :revenues, :date => :date, :currency_code => :currency_code

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ProductsRevenues.attribute_map["product".to_sym] != nil
        name = "product".to_sym
        value = attributes["product"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductsRevenues.attribute_map["product_id".to_sym] != nil
        name = "product_id".to_sym
        value = attributes["product_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductsRevenues.attribute_map["revenues".to_sym] != nil
        name = "revenues".to_sym
        value = attributes["revenues"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductsRevenues.attribute_map["date".to_sym] != nil
        name = "date".to_sym
        value = attributes["date"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductsRevenues.attribute_map["currency_code".to_sym] != nil
        name = "currency_code".to_sym
        value = attributes["currency_code"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ProductsRevenues.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

