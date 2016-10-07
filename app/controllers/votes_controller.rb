class VotesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @dish = Dish.find(params[:dish_id])

    @vote = Vote.find_or_create_by(dish_id: @dish.id, user_id: current_user.id)
    if request.xhr?
      @dish.votes.count.to_json
      render json: @dish.votes.count
    else
      redirect_to :back
    end
  end
end
