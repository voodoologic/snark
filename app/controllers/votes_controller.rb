class Votes::VotesController < ApplicationController
  before_filter :authenticate_user
  respond_to :js 

  def create
    user = params[:user_id]
    obj = params[:votable]
    id = params[:id]
    value = params[:type] == "up"? 1 : -1
    votable_object = obj.constantize.find_by_id(id)
    votable_object.add_update_evaluation(:votes, value, current_user)
  end

  def unauthorized
    
  end
end
