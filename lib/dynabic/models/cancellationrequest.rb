class CancellationRequest
  attr_accessor :cancelation_details, :is_cancelled_at_end_of_period

  # :internal => :external
  def self.attribute_map
  {
      :cancelation_details => :cancelationDetails, :is_cancelled_at_end_of_period => :isCancelledAtEndOfPeriod

  }
  end

  def initialize(attributes = {})
    # Morph attribute keys into undescored rubyish style
    if attributes.to_s != ""

      if CancellationRequest.attribute_map["cancelation_details".to_sym] != nil
        name = "cancelation_details".to_sym
        value = attributes["cancelationDetails"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      if CancellationRequest.attribute_map["is_cancelled_at_end_of_period".to_sym] != nil
        name = "is_cancelled_at_end_of_period".to_sym
        value = attributes["isCancelledAtEndOfPeriod"]
        send("#{name}=", value) if self.respond_to?(name)
	      end
      end
  end

  def to_body
    body = {}
    CancellationRequest.attribute_map.each_pair do |key,value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

