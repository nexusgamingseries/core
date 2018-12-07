class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams, id: :uuid do |t|
      t.boolean  :archived
      t.datetime :archived_at
      t.string   :logo_url
      t.string   :name,        null: false

      t.timestamps
    end
  end
end
