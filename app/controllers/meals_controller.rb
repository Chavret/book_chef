class MealsController < ApplicationController


  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
    @meals = Meal.all
  end


  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user

    if @meal.save
      @meal.save
      redirect_to meal_path(@meal)
    else
      render "new"
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :description, :food_type, :price, :photo)
  end

end
