class CreateTeamMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :team_matches, id: :uuid do |t|
      t.references  :match, foreign_key: true, null: false, type: :uuid
      t.references  :team,  foreign_key: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
