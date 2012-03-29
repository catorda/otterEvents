class EventController < ApplicationController
  def index

  end
  
  def new
    #@event = Event.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
      
    end
  end
end
