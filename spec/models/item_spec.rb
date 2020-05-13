require 'rails_helper'

describe "Items" do
  before do 
    @user = User.create(username: "b_bluejeans", email: 'test@test.com', password: 'password123')
    @character = Character.create(name: "Barry Bluejeans", user: @user)
    @item = Item.create(name: "Jelly bean", character: @character)
  
    puts @user.errors.full_messages
    puts @character.errors.full_messages
    puts @item.errors.full_messages
  end

  it "should have a name" do 
    expect(@item.name).to eq "Jelly bean"
  end 

  describe "for sale" do 
    before do 
      @item.update(price: 100, currency: 'Gold')
    end

    it "should have a price" do 
      expect(@item.price).to eq 100
    end

    it "should have a currency" do 
      expect(@item.currency).to eq 'Gold'
    end

    it "should shorten the currency name" do 
      expect(@item.short_currency).to eq 'gp'
    end
  end 
end 