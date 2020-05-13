require 'rails_helper'

describe "Items" do
  before do 
    @item = Item.create(name: "Jelly bean")
  end

  it "should have a name" do 
    expect(@item.name).to eq "Jelly bean"
  end 
end 