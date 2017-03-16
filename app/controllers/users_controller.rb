class UsersController < ApplicationController

def index
    @users = User.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

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

  def new
  end

end
