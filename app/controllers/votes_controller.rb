class VotesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @dish = Dish.find(params[:dish_id])
    unless Vote.find_by(user_id: current_user.id, dish_id: @dish.id)
      Vote.create(dish_id: @dish.id, user_id: current_user.id)
    end
    redirect_to :back
  end
end
