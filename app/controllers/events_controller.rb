class EventsController < ApplicationController
  def create
    @event = Event.new(event_params)
    @event.save
    redirect_to @event
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def index
    @event = Event.where('user_id = ?', session[:user_id])
    @user_name = User.where('id = ?',3)
  end


  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to profile_path
  end

  private
  def event_params
    params.require(:event).permit(:title, :location, :date, :description, :user_id)
  end

end
