class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons, id: :uuid do |t|
      t.boolean   :active, default: false
      t.date      :starts_on
      t.string    :name

      t.timestamps
    end
  end
end
