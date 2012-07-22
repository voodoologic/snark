module ApplicationHelper

  def user_votes_for_tweet(user, tweet)
    "user/#{user.id}/votes/tweet/#{tweet.id}"
  end
end
