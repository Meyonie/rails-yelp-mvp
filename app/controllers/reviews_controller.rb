  class ReviewsController < ApplicationController
# ReviewsController
  # GET new
  #   assigns a new review as @review
    def new
      @review = Review.new
    end

    # POST create
    #   with valid params
    #     creates a new Review
    #     assigns a newly created review as @review
    #     redirects to the parent restaurant
    #   with invalid params
    #     assigns a newly created but unsaved review as @review
    #     re-renders the 'new' template
    def create
      @review = Review.new(review_params)
      if @review.save
        redirect_to reviews_path
      else
        render 'new'
      end
    end

    private

    def restaurant_params
      params.require(:review).permit(:review, :category)
    end
  end
