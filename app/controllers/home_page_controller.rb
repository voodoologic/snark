class HomePageController < ApplicationController

  def index
    @user    = current_user
    @tweets = Tweet.all
    initiate_twitter_client
    @categories = Category.all.map(&:name)
  end

  def thank_you

  end

  def initiate_twitter_client
    if user_signed_in?
      @twitter = Twitter::Client.new(oauth_token: @user.oauth_token , oauth_token_secret: @user.oauth_secret)
      @list_names = @twitter.lists.lists.map(&:name)
    end
  end

end
