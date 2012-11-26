class EventData
  attr_accessor 

  # :internal => :external
  def self.attribute_map
  {
      

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      end
  end

  def to_body
    body = {}
    EventData.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

