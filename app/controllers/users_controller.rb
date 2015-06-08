class UsersController < ApplicationController
  def login
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to :back
  end


  private
  def user_params
    params.require(:users).permit(:firstName,:lastName,:username,:password)
  end
end
