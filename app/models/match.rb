class Match < ApplicationRecord
  belongs_to :season

  belongs_to :away_team
  belongs_to :home_team
  belongs_to :loser,  foreign_key: :losing_team_id
  belongs_to :winner, foreign_key: :winning_team_id

  has_many   :games
end
