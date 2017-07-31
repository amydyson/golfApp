Skip to content
This repository
Search
Pull requests
Issues
Marketplace
Gist
 @amydyson
 Sign out
 Watch 0
  Star 0
  Fork 2 amydyson/rails_day3
forked from jdesoto1618/Rails_Day3
 Code  Pull requests 0  Projects 0  Wiki  Settings Insights 
Branch: master Find file Copy pathrails_day3/app/models/car.rb
5557d94  29 days ago
 learn car simulator
0 contributors
RawBlameHistory     
51 lines (41 sloc)  781 Bytes
class Car
  def initialize(make, model_year)
    @make = make
    @model_year = model_year
    @speed = 0
    @lights = false
    @parking_brake = true
  end

  def new_car
    "You made a #{@model_year} #{@make}. It's speed is #{@speed}."
  end


  def accelerate
    @speed += 10
  end

  def brake
    if (@speed >= 5)
    @speed -= 5
    end
  end

  def lights
    @lights = !@lights #switch the boolean of whatever lights starts at
  end

  def new_lights
    if @lights
      "The lights of the car are on"
    else
      "The lights of the car are off"
    end
  end

  def park_brake
    @parking_brake = !@parking_brake
  end

  def new_brake
    if @parking_brake
      "Parking brake is ON!"
    else
      "Parking brake is OFF!"
    end
  end
end

#This is the model
Contact GitHub API Training Shop Blog About
© 2017 GitHub, Inc. Terms Privacy Security Status Help