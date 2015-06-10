class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && (user[:password] === params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to user_path(session[:user_id])
    else
      # Create an error message.
      render 'sessions/new'
      flash.now[:danger] = 'Invalid email/password combination'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
