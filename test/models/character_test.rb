require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  before do 
    @user = User.new()
  end
  test "Character creation" do 
    Character.new(user_id: @user.id)
  end 
end
