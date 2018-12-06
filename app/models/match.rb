# == Schema Information
#
# Table name: matches
#
#  id              :uuid             not null, primary key
#  starts_at       :datetime
#  casters         :jsonb
#  data            :jsonb
#  away_team_id    :uuid             not null
#  home_team_id    :uuid             not null
#  losing_team_id  :uuid
#  winning_team_id :uuid
#  season_id       :uuid             not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Match < ApplicationRecord
  belongs_to :season

  belongs_to :away_team
  belongs_to :home_team
  belongs_to :loser,  foreign_key: :losing_team_id
  belongs_to :winner, foreign_key: :winning_team_id

  has_many   :games
end
