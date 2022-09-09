class Park 
  attr_reader :name, :description, :direction, :hours

  def initialize(data)
    @name = data[:fullName]
    @description = data[:description] 
    @direction = data[:directionsInfo] 
    @hours = data[:operatingHours][0][:standardHours]
  end
end