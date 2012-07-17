class HomePageController < ApplicationController
  
  def index
    
    @user = current_user
  end

  def thank_you

  end
end
