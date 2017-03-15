class MealsController < ApplicationController
  before_action :set_meal, only: [:show]

  def index
    @meals = Meal.all
    @receive_food_type = params[:food_type]
    @meal_selected = Meal.where(food_type: @receive_food_type)
    unless params[:search_name].nil?
      @search = params[:search_name].to_s
      @meal = Meal.where(name: @search)
    end
  end

  def show
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

  def set_meal
    if (params[:id])
      @meal = Meal.find(params[:id])
    else
      @meal = Meal.find(params[:name])
    end
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :food_type, :price, :photo)
  end

end
