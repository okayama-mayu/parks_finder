require 'rails_helper' 

RSpec.describe 'State Show Page' do 
  # As a user,
  # When I select "Tennessee" from the form,
  # (Note: use the existing form)
  # And click on "Find Parks",
  # I see the total of parks found,
  # And for each park I see:
  # - full name of the park
  # - description
  # - direction info
  # - standard hours for operation
  it 'shows the total parks found for TN' do 
    visit root_path 

    select 'Tennessee', :from => :state 
    click_button 'Find Parks'

    expect(current_path).to eq '/parks'
    
    expect(page).to have_content 'Tennessee'
    expect(page).to have_content 'Total Parks: 15'
  end
end