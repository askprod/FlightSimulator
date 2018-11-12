class BookingController < ApplicationController
  def new

    if params['booking']
      @flight_id = params['booking']['flight_id']
      @number_of_passengers = params[:nbr_of_passengers].to_i
    end

  end

  def create

  end
end
