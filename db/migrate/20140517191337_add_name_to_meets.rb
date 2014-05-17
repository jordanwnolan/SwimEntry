class AddNameToMeets < ActiveRecord::Migration
  def change
    add_column :meets, :meet_name, :string
  end
end
