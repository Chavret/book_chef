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
    @booked.sort_by! { |booking| booking.date.to_i }
    @booked.reverse!
    @booked.each do |book|
      if (book.date < now)
        book.status = "Passed"
      end
    end
  end

  private
  def sort(book)
    book.each_index do |index|

    end
    return sorted_array
  end
end


