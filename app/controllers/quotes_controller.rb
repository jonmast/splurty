class QuotesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def index
    @quote = Quote.order('RANDOM()').first
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] =
        '<strong>Could not save</strong>, the data you entered is invalid'
    end
    redirect_to root_path
  end

  def about
  end

  private

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end

  def not_found
    render text: 'Quote not found', status: :not_found
  end
end
