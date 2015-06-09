class UsersController < ApplicationController
  def login
  end

  def profile
    @event = Event.where('user_id = ?', session[:user_id])
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to login_path
  end

  def show
  end

  private
  def user_params
    params.require(:users).permit(:first_name, :last_name, :username, :password)
  end
end
