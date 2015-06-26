class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @book = Book.find_by(id: params[:book_id])
    @review.book = @book

    if @review.save
      redirect_to book_path(@book)
    else
      render book_path(@book)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
