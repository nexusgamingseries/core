class Division < ApplicationRecord

  belongs_to :season
  has_many   :teams, through: :team_divisions

end
