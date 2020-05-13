require 'rails_helper'

describe "Characters" do 
  before do 
    @character = Character.create(name: "Barry Bluejeans")
  end

  it "should have a name" do 
    expect(@character.name).to eq 'Barry Bluejeans'
  end
end 