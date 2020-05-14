require 'rails_helper'

describe "Characters" do 
  before do 
    @user = User.create(username: "b_bluejeans", email: 'test@test.com', password: 'password123')
    @character = Character.create(name: "Barry Bluejeans", user: @user, strength: 12)

    puts @user.errors.full_messages
    puts @character.errors.full_messages
  end

  it "should have a name" do 
    expect(@character.name).to eq 'Barry Bluejeans'
  end

  it "should have a user" do 
    expect(@character.user_id).to eq @user.id
  end

  it "should return the ability modifier" do 
    expect(@character.strength_modifier).to eq 1
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

  describe "with bad stats" do
    before do
      @bad_stats = Character.create(name: "Barry Bluejeans", user: @user, strength: 8)
    end

    it "should return negative numbers" do
      expect(@bad_stats.strength_modifier).to eq -1
    end
    

  end
end 