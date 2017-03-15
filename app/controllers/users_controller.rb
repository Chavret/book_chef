class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
    @booked = []
    @booked = Booking.where(meal_id: 11)
  end

end
