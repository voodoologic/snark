require 'spec_helper'

describe Tweet do 
  it "has properties" do 
    subject.should respond_to :message
  end

  it 'has a user' do 
    subject.user.should be_a_kind_of User
  end

  pending 'is associated to circle of hell' do 
    subject.category.should include ["hell", "snark", "sports"]
    subject.tags
  end


end
