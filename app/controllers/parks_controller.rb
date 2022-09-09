class ParksController < ApplicationController 
  before_action :assign_state, only: [:index]
  def index 
    @parks = ParkFacade.parks(params[:state])
    @count = ParkFacade.park_count(params[:state])
  end

  private 

    def assign_state
      abbr = params[:state].to_sym 

      states = {:AK => "Alaska", :AL => "Alabama", :AS => "American Samoa", :AZ => "Arizona", :AR => "Arkansas", :CA => "California", :CO => "Colorado", :CT => "Connecticut", :DE => "Delaware", :DC => "District of Columbia", :FM => "Federated States of Micronesia", :FL => "Florida", :GA => "Georgia", :GU => "Guam", :HI => "Hawaii", :ID => "Idaho", :IL => "Illinois", :IN => "Indiana", :IA => "Iowa", :KS => "Kansas", :KY => "Kentucky", :LA => "Louisiana", :ME => "Maine", :MH => "Marshall Islands", :MD => "Maryland", :MA => "Massachusetts", :MI => "Michigan", :MN => "Minnesota", :MS => "Mississippi", :MO => "Missouri", :MT => "Montana", :NE => "Nebraska", :NV => "Nevada", :NH => "New Hampshire", :NJ => "New Jersey", :NM => "New Mexico", :NY => "New York", :NC => "North Carolina", :ND => "North Dakota", :MP => "Northern Mariana Islands", :OH => "Ohio", :OK => "Oklahoma", :OR => "Oregon", :PW => "Palau", :PA => "Pennsylvania", :PR => "Puerto Rico", :RI => "Rhode Island", :SC => "South Carolina", :SD => "South Dakota", :TN => "Tennessee", :TX => "Texas", :UT => "Utah", :VT => "Vermont", :VI => "Virgin Islands", :VA => "Virginia", :WA => "Washington", :WV => "West Virginia", :WI => "Wisconsin", :WY => "Wyoming", :AE => "Armed Forces Middle East", :AA => "Armed Forces Americas (except Canada)", :AP => "Armed Forces Pacific"}
      
      @state = states[abbr] 
    end
end