class Game < ApplicationRecord

  belongs_to :match
  has_one    :away_team, through: :matches
  has_one    :home_team, through: :matches
  has_one    :winner,    through: :matches
  has_one    :loser,     through: :matches

end
