class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show, :edit]


  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

   # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    # raise
    @restaurant = Restaurant.new(restaurant_params)
    # new http request
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
      @restaurant = Restaurant.find(params[:id])
  end


  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :content)
  end

end
