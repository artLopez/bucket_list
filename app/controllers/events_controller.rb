class EventsController < ApplicationController

  def create
    @event = Event.new(event_params)

    @event.save
    redirect_to @event
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @user_id = session[:user_id]
    @event = Event.where('user_id = ?', @user_id)
  end

  private
  def event_params
    params.require(:events).permit(:title, :location, :date, :description, :user_id)
  end
end
