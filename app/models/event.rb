class Event < ActiveRecord::Base
  belongs_to :user_tbl
  attr_accessible :description, :name, :timeStart, :timeEnd, :location, :private, :user_id
end
