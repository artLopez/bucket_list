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
    @event = Event.all
  end

  private
  def event_params
    params.require(:events).permit(:title,:location,:date,:description)
  end

end
