class CreateDivisions < ActiveRecord::Migration[5.2]
  def change
    create_table :divisions, id: :uuid do |t|
      t.string :name, null: false

      t.references :season, foreign_key: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
