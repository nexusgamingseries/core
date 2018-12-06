class CreateDivisionMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :division_matches, id: :uuid do |t|
      t.references  :division, foreign_key: true, null: false, type: :uuid
      t.references  :match,    foreign_key: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
