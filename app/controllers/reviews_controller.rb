class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.save
    @review.restaurant = @restaurant
    redirect_to restaurant_path(@restaurant)
  end
end
