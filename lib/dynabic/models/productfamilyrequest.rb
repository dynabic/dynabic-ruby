class ProductFamilyRequest
  attr_accessor :description, :name, :site_id, :products

  # :internal => :external
  def self.attribute_map
  {
      :description => :description, :name => :name, :site_id => :site_id, :products => :products

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ProductFamilyRequest.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductFamilyRequest.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductFamilyRequest.attribute_map["site_id".to_sym] != nil
        name = "site_id".to_sym
        value = attributes["site_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductFamilyRequest.attribute_map["products".to_sym] != nil
        name = "products".to_sym
        value = attributes["products"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ProductRequest.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      end
  end

  def to_body
    body = {}
    ProductFamilyRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

