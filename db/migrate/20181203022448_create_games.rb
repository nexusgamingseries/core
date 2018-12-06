class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games, id: :uuid do |t|
      t.jsonb :stats
      t.uuid  :losing_team_id
      t.uuid  :winning_team_id

      t.references :match, foreign_key: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
