class TweetsController < ApplicationController
  respond_to :js, :html

  def vote
    value = evaluate_vote(params[:type])
    @tweet = Tweet.find(params[:votable_id])
    @tweet.add_or_update_evaluation(:votes, value, current_user)
    gflash "Thank you for voting"
  end

  private 

  def evaluate_vote(vote_type)
    case vote_type 
      when "up" 
        1
      when "down"
        -1
      else 
        return vote_type
    end
  end

end
