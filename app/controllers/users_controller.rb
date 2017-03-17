class UsersController < ApplicationController

  def show
    now = Time.now
    @user = User.find(params[:id])
    @bookings = @user.bookings.order(date: :desc)
    @booked = []
    @user.meals.each do |meal|
      mealid = meal.id
      @booked << Booking.where(meal_id: mealid)
    end

    @booked.flatten!
    @booked.each do |book|
      if (book.date < now)
        book.status = "Passed"
      end
    end
    @booked.sort_by {|book| book.date.to_i}
  end

end
