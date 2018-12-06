# == Schema Information
#
# Table name: games
#
#  id              :uuid             not null, primary key
#  stats           :jsonb
#  losing_team_id  :uuid
#  winning_team_id :uuid
#  match_id        :uuid             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Game < ApplicationRecord
  belongs_to :match

  belongs_to :loser,  foreign_key: :losing_team_id
  belongs_to :winner, foreign_key: :winning_team_id

  has_one :away_team, through: :match
  has_one :home_team, through: :match
end
