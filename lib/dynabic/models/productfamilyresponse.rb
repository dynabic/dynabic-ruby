class ProductFamilyResponse
  attr_accessor :id, :description, :name, :site_id, :products, :is_archived

  # :internal => :external
  def self.attribute_map
  {
      :id => :id, :description => :description, :name => :name, :site_id => :site_id, :products => :products, :is_archived => :is_archived

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if ProductFamilyResponse.attribute_map["id".to_sym] != nil
        name = "id".to_sym
        value = attributes["id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductFamilyResponse.attribute_map["description".to_sym] != nil
        name = "description".to_sym
        value = attributes["description"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductFamilyResponse.attribute_map["name".to_sym] != nil
        name = "name".to_sym
        value = attributes["name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductFamilyResponse.attribute_map["site_id".to_sym] != nil
        name = "site_id".to_sym
        value = attributes["site_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if ProductFamilyResponse.attribute_map["products".to_sym] != nil
        name = "products".to_sym
        value = attributes["products"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push ProductResponse.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if ProductFamilyResponse.attribute_map["is_archived".to_sym] != nil
        name = "is_archived".to_sym
        value = attributes["is_archived"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    ProductFamilyResponse.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

