class FlightsController < ApplicationController
  
  def index

  end

  def show
    @flights_options = Flight.all.map{|u| [u.departure_date]}.uniq
    @airports_options = Airport.all.map{|a| [a.airport_code]}
    @passengers_options = [1, 2, 3, 4]

    if params['/flights/show']
      @arrival_code = Airport.find_by_airport_code(params['/flights/show'][:arrival_code]).id
      @departure_code = Airport.find_by_airport_code(params['/flights/show'][:departure_code]).id
      @date_code = params['/flights/show'][:departure_date]
      
      @flights_results = 
      Flight.where(departure_airport_id: @departure_code,
                 arrival_airport_id: @arrival_code,
                 departure_date: @date_code
                )
      # Tests individuels:
      # @flights_results_date = Flight.where(departure_date: (params['/flights/show']['departure_date'])).map{|n| n.departure_date}
      # @flights_results_arrival = Flight.where(arrival_airport_id: (Airport.find_by_airport_code(params['/flights/show']['arrival_code']).id)).map{|n| n.arrival_airport_id}
      # @flights_results_departure = Flight.where(departure_airport_id: (Airport.find_by_airport_code(params['/flights/show']['departure_code']).id)).map{|n| n.departure_airport_id}
    end

  end

end



