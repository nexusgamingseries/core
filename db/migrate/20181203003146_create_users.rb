class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :uuid do |t|
      t.boolean  :archived, default: false
      t.datetime :archived_at
      t.integer  :mmr
      t.jsonb    :rank
      t.string   :battle_tag
      t.string   :email
      t.string   :encrypted_password
      t.string   :hotslogs_id
      t.string   :name
      t.string   :site_role
      t.string   :toon_handle

      t.timestamps
    end
  end
end
