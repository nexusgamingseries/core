class Match < ApplicationRecord

  belongs_to :season
  belongs_to :winner, foreign_key: :winning_team_id
  belongs_to :loser,  foreign_key: :losing_team_id

  has_many   :games
  has_one    :away_team
  has_one    :home_team

end