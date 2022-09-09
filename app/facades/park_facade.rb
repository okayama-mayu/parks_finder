class ParkFacade 
  def self.parks(state)
    json = ParkService.park_data(state)

    json[:data].map do |park_data| 
      Park.new(park_data)
    end
  end

  def self.park_count(state)
    json = ParkService.park_data(state)
    json[:total].to_i
  end
end