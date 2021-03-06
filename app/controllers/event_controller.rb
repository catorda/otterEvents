class EventController < ApplicationController
  
  before_filter :authenticate_user_tbl!
  
  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end
  def create
    @event = Event.new(params[:event])
    @event.user_id = current_user_tbl.id

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
    
  end
  
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end
  
  def new
    @event = Event.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
      
    end
  end
  
  # GET /event/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # PUT /event/1
  # PUT /event/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /event/1
  # DELETE /event/1.json
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to @event }
      format.json { head :no_content }
    end
  end  
end
