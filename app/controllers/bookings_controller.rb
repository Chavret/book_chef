class BookingsController < ApplicationController
  def edit
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

end
