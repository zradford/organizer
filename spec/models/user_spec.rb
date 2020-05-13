require 'rails_helper'

describe "Users" do 
  before do 
    @user = User.create(username: "b_bluejeans")
  end 

  it "should have a username" do
    expect(@user.username).to eq 'b_bluejeans'
  end
end 