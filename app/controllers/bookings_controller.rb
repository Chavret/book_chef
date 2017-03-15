class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :booking, :destroy]
  before_action :set_meal, only: [:new, :create]
  def index
    @bookings = Booking.all
  end

  def show
  end

  def edit
  end

  def update
    @booking.update(date: params[:date],
     number_customers: params[:number_customers],
      meal_id: params[:meal_id],
       user_id: params[:user_id]
    )
    if @booking.save
      @booking.save
      redirect_to user_path(current_user.id)
    else
      render "edit"
    end
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.meal = @meal
    if @booking.save
      @booking.save
      redirect_to user_path(current_user.id)
    else
      render "new"
    end
  end

  def destroy
    @booking.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :number_customers, :meal_id, :user_id)
  end

  def set_meal
    meal_id = params[:meal_id].match(/[a-zA-Z0-9]*/)
    @meal = Meal.find(meal_id.to_s.to_i)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
