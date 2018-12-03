class CreateDivisionTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :division_teams do |t|
      t.integer  :division_id
      t.integer  :team_id
    end
  end
end
