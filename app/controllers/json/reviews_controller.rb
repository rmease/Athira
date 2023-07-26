class Json::ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render 'json/reviews/index'
  end

  def show
      @review = Review.find(params[:id])
      render 'json/reviews/show'
  end

  private
  def review_params
      params.require(:review).permit(:company_name, :body, :logo)
  end
end
