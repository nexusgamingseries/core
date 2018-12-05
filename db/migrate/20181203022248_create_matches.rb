class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches, id: :uuid do |t|
      t.datetime :starts_at
      t.jsonb    :casters
      t.jsonb    :data
      t.uuid     :away_team_id, null: false
      t.uuid     :home_team_id, null: false
      t.uuid     :losing_team_id
      t.uuid     :winning_team_id

      t.references :season, foreign_key: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
