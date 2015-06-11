class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else
      render 'new'
    end
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