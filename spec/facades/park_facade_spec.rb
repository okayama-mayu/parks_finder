require 'rails_helper' 

RSpec.describe 'Park Facade' do 
  it 'returns an array of Park objects' do 
    parks = ParkFacade.parks('TN')

    expect(parks).to be_an Array 
    expect(parks).to be_all Park
  end

  it 'returns the count of parks associated with a state' do 
    count = ParkFacade.park_count('TN')

    expect(count).to eq 15
  end
end