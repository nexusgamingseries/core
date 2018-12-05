class CreateRosterSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :roster_spots, id: :uuid do |t|
      t.boolean  :archived, default: false
      t.datetime :archived_at
      t.datetime :joined_at
      t.string   :role

      t.references :team, foreign_key: true, null: false, type: :uuid
      t.references :user, foreign_key: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
