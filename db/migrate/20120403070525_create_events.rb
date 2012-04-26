class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :events, [:user_id, :created_at]
  end
end
