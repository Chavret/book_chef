class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @bookings = @user.bookings
    @booked = []
    @user.meals.each do |meal|
      mealid = meal.id
      @booked << Booking.where(meal_id: mealid)
    end
    @booked.flatten!
  end

end
