class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer  :season_id
      t.integer  :away_team_id
      t.integer  :home_team_id
      t.datetime :starts_at
      t.jsonb    :casters
      t.jsonb    :data
      t.timestamps
    end
  end
end
