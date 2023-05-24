class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def create
    # raise
    @restaurant = Restaurant.new(restaurant_params)
    # @restaurant.save
    # redirect_to restaurant_path(@restaurant)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
