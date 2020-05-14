class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @user = User.find(current_user.id) if user_signed_in?
  end
end
