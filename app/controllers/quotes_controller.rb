class QuotesController < ApplicationController

  def index
    @quotes = Quote.ordered
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
      respond_to do |format|
        format.html { redirect_to quotes_path, notice: 'Quote was successfully created.' }
        format.turbo_stream
      end

    else
      render :new, status: :unprocessable_entity
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
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @quote = find_quote
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_path, notice: 'Quote was successfully destroyed.' }
      format.turbo_stream
    end

  end

  private

  def find_quote
    Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:name)
  end

end
