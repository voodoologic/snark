require 'spec_helper'

OmniAuth.config.test_mode = true
describe OmniauthCallbacksController do

  before do 
    request.env["devise.mapping"] = Devise.mappings[:user] 
    request.env["omniauth.auth"] = OmniAuth.config.mock_auth[:twitter] 
  end

  OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new( { 
    provider:  'twitter', 
    uid:  '123545', 
    info: {nickname: "bosworth"}, 
    credentials: {token: "1234554321TOKEN", secret: "6789009876SECRET"}
  } )

  it "should set the user" do 
    get :twitter
    assigns(:user).should_not be_nil
  end

end
