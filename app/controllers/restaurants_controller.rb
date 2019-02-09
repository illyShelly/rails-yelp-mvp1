class RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:show, :edit, :destroy]


  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

   # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  def create
    # raise
    @restaurant = Restaurant.new(restaurant_params)
   if @restaurant.save
    # is necessary specify @restaurant.id
     redirect_to restaurant_path(@restaurant.id)
   else
     render :new
   end
  end

  def show
  end

  def edit
  end

  def destroy
    @restaurant.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.

  def set_restaurant
      @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end


# < link_to "Delete restaurant", restaurant_path(dddd), method: :DELETE,
#     data: { confirm: "Are you sure? There is not step back." } >


