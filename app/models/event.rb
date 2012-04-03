class Event < ActiveRecord::Base
  attr_accessible :description, :name, :timeStart, :timeEnd, :location, :private
end
