require 'rails_helper' 

RSpec.describe 'ParkService' do 
  it 'retrieves Park data by state and parses response' do 
    parsed_json = ParkService.park_data('TN')

    expect(parsed_json).to be_a Hash 
    expect(parsed_json[:data]).to be_an Array 

    park_data = parsed_json[:data][0] 

    expect(park_data[:name]).to be_a String 
    expect(park_data[:description]).to be_a String 
    expect(park_data[:directionsInfo]).to be_a String 
    expect(park_data[:operatingHours][0][:standardHours]).to be_a Hash
    expect(park_data[:operatingHours][0][:standardHours][:wednesday]).to be_a String
  end
end