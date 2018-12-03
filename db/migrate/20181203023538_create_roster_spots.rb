class CreateRosterSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :roster_spots do |t|
      t.integer  :team_id
      t.integer  :user_id
      t.string   :role
      t.datetime :joined_at
      t.boolean  :archived, default: false
      t.datetime :archived_at
      t.timestamps
    end
  end
end
