class UpdateDefaultValueForTeam < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:teams, :archived, from: nil, to: false)
    change_column_null(:teams, :archived, false, false)
  end
end
