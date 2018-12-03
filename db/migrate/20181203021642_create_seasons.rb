class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.string    :name
      t.date      :starts_on
      t.boolean   :active, default: false
      t.timestamps
    end
  end
end
