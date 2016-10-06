class SearchesController < ApplicationController
  def show
    @results = Dish.search(params[:search])
  end
end
