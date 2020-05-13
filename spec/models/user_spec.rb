require 'rails_helper'

describe "Users" do 
  before do 
    @user = User.create(username: "b_bluejeans", email: 'test@test.com', password: 'password123')
    puts @user.errors.full_messages
  end 

  it "should have a username" do
    expect(@user.username).to eq 'b_bluejeans'
  end

  describe "with characters" do
    before do
      @character = Character.create(name: 'Jilbo', user: @user)
      @item_one = Item.create(name: "sword", description: "a sword", character: @character)
      @item_two = Item.create(name: "shield", description: "a shield", character: @character)

      puts @character.errors.full_messages
      puts @item_one.errors.full_messages
      puts @item_two.errors.full_messages
    end

    it "should have characters" do
      expect(@user.characters.count).to eq 1
    end

    it "should have items" do 
      expect(@user.items.count).to eq 2
    end
  end
end 