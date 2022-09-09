require 'rails_helper' 

RSpec.describe Park do 
  it 'exists and has proper Park attributes' do 
    response = file_fixture('sample_park_data.txt').read

    data = JSON.parse(response, symbolize_names: true)

    park = Park.new(data)

    expect(park).to be_a Park 
    expect(park.name).to eq data[:fullName] 
    expect(park.description).to eq data[:description] 
    expect(park.direction).to eq data[:directionsInfo] 
    expect(park.hours).to eq data[:operatingHours][0][:standardHours]
  end
end