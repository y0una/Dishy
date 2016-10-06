class VotesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @dish = Dish.find(params[:dish_id])

    Vote.find_or_create_by(dish_id: @dish.id, user_id: current_user.id)
    if request.xhr?
      p "*" *90
      p @dish.votes.count.to_json
      @dish.votes.count.to_json
    else
      redirect_to :back
    end
  end
end
