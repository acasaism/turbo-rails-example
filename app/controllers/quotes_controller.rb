class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
  end

  def show
    @quote = find_quote
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to quotes_path, notice: 'Quote was successfully created.'
    else
      render :new
    end
  end

  def edit
    @quote = find_quote
  end

  def update
    @quote = find_quote
    if @quote.update(quote_params)
      redirect_to quotes_path, notice: 'Quote was successfully destroyed.'
    else
      render :edit
    end
  end

  def destroy
    @quote = find_quote
    @quote.destroy
    redirect_to quotes_path, notice: 'Quote was successfully destroyed.'
  end

  private

  def find_quote
    Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:name)
  end

end
