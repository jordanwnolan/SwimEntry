class CreateSwimEvents < ActiveRecord::Migration
  def change
    create_table :swim_events do |t|
      t.string :event_name
      t.integer :event_distance
      t.timestamps
    end
  end
end
