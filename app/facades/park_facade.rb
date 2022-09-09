class ParkFacade 
  def self.parks(state)
    json = ParkService.park_data(state)

    json[:data].map do |park_data| 
      Park.new(park_data)
    end
  end
end