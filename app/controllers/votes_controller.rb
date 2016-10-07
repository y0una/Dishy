class VotesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @dish = Dish.find(params[:dish_id])

    @vote = Vote.find_or_create_by(dish_id: @dish.id, user_id: current_user.id)
    if request.xhr?
      if @dish.votes.count == 1
        render json: { text:"1 Vote", id: @dish.id }
      else
        render json: { text:"#{@dish.votes.count} Votes", id: @dish.id.to_s }
      end
    else
      redirect_to :back
    end
  end
end
