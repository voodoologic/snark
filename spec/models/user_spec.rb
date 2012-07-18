require 'spec_helper'

describe User do

  it "should respond to attributes" do 
    subject.should respond_to :uid, :provider, :nickname
  end
  
  it "has many Tweets" do 
    subject.should respond_to :tweets
  end

end

