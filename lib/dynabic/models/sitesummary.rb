class SiteSummary
  attr_accessor :today_revenues, :total_subscribers, :today_new_subscriptions, :total_revenues, :site_id, :site_name

  # :internal => :external
  def self.attribute_map
  {
      :today_revenues => :today_revenues, :total_subscribers => :total_subscribers, :today_new_subscriptions => :today_new_subscriptions, :total_revenues => :total_revenues, :site_id => :site_id, :site_name => :site_name

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if SiteSummary.attribute_map["today_revenues".to_sym] != nil
        name = "today_revenues".to_sym
        value = attributes["today_revenues"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push RevenueAmount.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SiteSummary.attribute_map["total_subscribers".to_sym] != nil
        name = "total_subscribers".to_sym
        value = attributes["total_subscribers"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SiteSummary.attribute_map["today_new_subscriptions".to_sym] != nil
        name = "today_new_subscriptions".to_sym
        value = attributes["today_new_subscriptions"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SiteSummary.attribute_map["total_revenues".to_sym] != nil
        name = "total_revenues".to_sym
        value = attributes["total_revenues"]
        if value.is_a?(Array)
	        array = Array.new
	        value.each do |arrayValue|
	          array.push RevenueAmount.new(arrayValue)
	        end
	        send("#{name}=", array) if self.respond_to?(name)
	      end
        end
      if SiteSummary.attribute_map["site_id".to_sym] != nil
        name = "site_id".to_sym
        value = attributes["site_id"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if SiteSummary.attribute_map["site_name".to_sym] != nil
        name = "site_name".to_sym
        value = attributes["site_name"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    SiteSummary.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

