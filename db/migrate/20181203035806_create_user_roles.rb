class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles, id: :uuid do |t|
      t.datetime :archived_at

      t.references :role, foreign_key: true, null: false, type: :uuid
      t.references :user, foreign_key: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
