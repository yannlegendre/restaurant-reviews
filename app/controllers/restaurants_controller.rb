class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:chef, :show]

  def chef
    @chef_name = @restaurant.chef_name
  end

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def top
    @restaurants = Restaurant.where("stars >= #{Restaurant::TOP_RESTAURANT_MINIMUM_NOTATION}")
    # @restaurants = Restaurant.where(stars: 5)
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
