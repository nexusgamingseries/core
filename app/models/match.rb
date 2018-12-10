# frozen_string_literal: true

# == Schema Information
#
# Table name: matches
#
#  id           :uuid             not null, primary key
#  starts_at    :datetime
#  casters      :jsonb
#  data         :jsonb
#  away_team_id :uuid             not null
#  home_team_id :uuid             not null
#  loser_id     :uuid
#  winner_id    :uuid
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Match < ApplicationRecord
  has_one :division_match
  has_one :division, through: :division_match

  has_one :season, through: :division

  belongs_to :away_team, class_name: 'Team'
  belongs_to :home_team, class_name: 'Team'

  belongs_to :loser,  class_name: 'Team', optional: true
  belongs_to :winner, class_name: 'Team', optional: true

  has_many :team_matches
  has_many :teams, through: :team_matches

  has_many :games
end
