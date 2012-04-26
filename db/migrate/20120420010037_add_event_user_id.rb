class AddEventUserId < ActiveRecord::Migration
  def up
    add_column :events, :user_id,    :string 
  end

  def down
  end
end
