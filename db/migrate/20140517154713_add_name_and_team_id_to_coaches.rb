class AddNameAndTeamIdToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :first_name, :string
    add_column :coaches, :last_name, :string
    add_column :coaches, :team_id, :integer
  end
end
