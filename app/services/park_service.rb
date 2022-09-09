class ParkService 
  def self.park_data(state)
    conn = Faraday.new(url: "https://developer.nps.gov") do |faraday| 
      faraday.params['api_key'] = ENV['parks_api_key']
      faraday.params['stateCode'] = state
    end
    response = conn.get("/api/v1/parks")
    JSON.parse(response.body, symbolize_names: true) if response.status == 200
  end
end