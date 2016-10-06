class VotesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @dish = Dish.find(params[:dish_id])

    Vote.find_or_create_by(dish_id: @dish.id, user_id: current_user.id)
    redirect_to :back
  end
end
