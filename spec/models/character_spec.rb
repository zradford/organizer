require 'rails_helper'

describe "Characters" do 
  before do 
    @user = User.create(username: "b_bluejeans", email: 'test@test.com', password: 'password123')
    @character = Character.create(name: "Barry Bluejeans", user: @user)

    puts @user.errors.full_messages
    puts @character.errors.full_messages
  end

  it "should have a name" do 
    expect(@character.name).to eq 'Barry Bluejeans'
  end

  it "should have a user" do 
    expect(@character.user_id).to eq @user.id
  end

  describe "can have items" do 
    before do 
      @item_one = Item.create(name: "sword", description: "a sword", character: @character)
      @item_two = Item.create(name: "shield", description: "a shield", character: @character)

      puts @item_one.errors.full_messages
      puts @item_two.errors.full_messages
    end

    it "should have two items" do 
      expect(@character.items.count).to eq 2
    end
  end
end 