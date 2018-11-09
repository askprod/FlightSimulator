class FlightsController < ApplicationController
  
  def index

  end

  def show
    @flights_options = Flight.all.map{|u| [u.departure_date]}.uniq
    @airports_options = Airport.all.map{|a| [a.airport_code]}
    @passengers_options = [1, 2, 3, 4]
  end

end
