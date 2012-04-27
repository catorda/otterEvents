class DashboardController < ApplicationController
  before_filter :authenticate_user_tbl!
  
  def index
    @my_events = Event.where(:user_id => current_user_tbl.id)
    @events = Event.limit(10)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end

    
    
  end
end
