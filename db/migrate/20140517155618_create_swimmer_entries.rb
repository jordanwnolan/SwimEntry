class CreateSwimmerEntries < ActiveRecord::Migration
  def change
    create_table :swimmer_entries do |t|
      t.integer :meet_id
      t.integer :swim_event_id
      t.integer :swimmer_id
      t.integer :entry_time
      
      t.timestamps
    end
  end
end
