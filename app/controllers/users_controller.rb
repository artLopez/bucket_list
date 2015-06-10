class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to login_path
  end

  def index
    @users = User.all
  end

  def show
    displayUserEvents
  end

  private
  def user_params
    params.require(:users).permit(:first_name, :last_name, :username, :password)
  end

  def displayUserEvents
   @event = Event.where('user_id = ?',params[:id])
   @user_name = User.where('id = ?',params[:id])
   @user_count = User.all
  end
end