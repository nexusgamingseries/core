class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string   :name
      t.string   :email
      t.string   :encrypted_password
      t.string   :battle_tag
      t.string   :toon_handle
      t.string   :hotslogs_id
      t.string   :site_role
      t.boolean  :archived, default: false
      t.datetime :archived_at
      t.integer  :mmr
      t.jsonb    :rank
      t.timestamps
    end
  end
end
