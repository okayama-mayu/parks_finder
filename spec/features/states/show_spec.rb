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

  it 'lists each park with its name, description, direction info, and standard hours of operation' do 
    visit root_path 

    select 'Tennessee', :from => :state 
    click_button 'Find Parks'

    expect(current_path).to eq '/parks'

    expect(page).to have_content("Park Description", count: 15)
    expect(page).to have_content("Directions to the Park", count: 15)
    expect(page).to have_content("Standard Hours of Operation", count: 15)

    expect(page).to have_content "Andrew Johnson National Historic Site"
    expect(page).to have_content "Park Description: Andrew Johnson's complex presidency (1865-69) illustrates the Constitution at work following the Civil War. As the President and Congress disagreed on Reconstruction methods, the Constitution served as their guide on balance of powers, vetoes, and impeachment. In the end, it evolved as a living document with pivotal amendments on freedom, citizenship, and voting rights - topics still vital today."
    expect(page).to have_content "Directions to the Park: GPS The GPS setting for Andrew Johnson NHS may be listed as 121 Monument Ave, which is the park HQ in the National Cemetery. To arrive at the Visitor Center, use 101 North College Street, Greeneville, TN. Plane The closest airport is the Tri-Cities Regional Airport, 43 miles NE of Greeneville. From the airport, take I-81 South to exit 36 and follow the signs to Greeneville. Car From I-81S take exit 36 to Rt. 172 south to Greeneville. From I-81N take exit 23 to Rt. 11E north to Greeneville."
    expect(page).to have_content "Monday: 9:00AM - 4:00PM"
    expect(page).to have_content "Tuesday: 9:00AM - 4:00PM"
    expect(page).to have_content "Wednesday: 9:00AM - 4:00PM"
    expect(page).to have_content "Thursday: 9:00AM - 4:00PM"
    expect(page).to have_content "Friday: 9:00AM - 4:00PM"
    expect(page).to have_content "Saturday: 9:00AM - 4:00PM"
    expect(page).to have_content "Sunday: 9:00AM - 4:00PM"
  end
end