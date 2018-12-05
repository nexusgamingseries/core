class CreateDivisionTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :division_teams, id: :uuid do |t|
      t.references  :division, foreign_key: true, null: false, type: :uuid
      t.references  :team,     foreign_key: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
