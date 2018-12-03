class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :winning_team_id
      t.jsonb   :stats
      t.timestamps
    end
  end
end
