class AddEventDetails < ActiveRecord::Migration
  def up
    change_table :events do |t|
      t.string :location
      t.datetime :timeStart
      t.datetime :timeEnd
      t.boolean :private
      
    end
  end

  def down
  end
end
