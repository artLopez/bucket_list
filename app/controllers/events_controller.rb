class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    if current_user.events.create(event_params)
      redirect_to user_path(current_user)
    else
      render 'events/new'
    end

  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def index
    @user = User.find_by(id: current_user)
    @event = @user.events
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

    redirect_to user_path(current_user)
  end

  private
  def event_params
    params.require(:event).permit(:title, :location, :date, :description, :user_id)
  end
end
