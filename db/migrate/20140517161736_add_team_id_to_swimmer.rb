class AddTeamIdToSwimmer < ActiveRecord::Migration
  def change
    add_column :swimmers, :team_id, :integer
  end
end
