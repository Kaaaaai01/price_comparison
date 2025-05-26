class PricesController < ApplicationController
  def new
    @price = Price.new
  end

  def index
    @price = Price.all
  end

  def show
  end
end
