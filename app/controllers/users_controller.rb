class UsersController < ApplicationController
  def login
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to login_path
  end

  def show
    render 'events/new'
  end

  private
  def user_params
    params.require(:users).permit(:first_name, :last_name, :username, :password)
  end

end
