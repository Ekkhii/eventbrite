class EventsController < ApplicationController
  def new
  end

  def create
  	@current_user = current_user

  	@event = Event.new(params.permit(:description, :place , :date))
 	@event.creator_id = @current_user.id
 	@event.save

  	redirect_to events_path
  end

  def index

  	@event = Event.all
  	
  end

  def show

    @event = Event.find(params[:id])
    
  end
 
end
