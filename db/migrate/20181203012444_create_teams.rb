class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string   :name
      t.string   :logo_url
      t.boolean  :archived
      t.datetime :archived_at
      t.timestamps
    end
  end
end
