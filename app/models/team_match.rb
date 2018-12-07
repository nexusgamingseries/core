# == Schema Information
#
# Table name: team_matches
#
#  id         :uuid             not null, primary key
#  match_id   :uuid             not null
#  team_id    :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeamMatch < ApplicationRecord
  belongs_to :match
  belongs_to :team
end
