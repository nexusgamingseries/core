# frozen_string_literal: true

# == Schema Information
#
# Table name: teams
#
#  id          :uuid             not null, primary key
#  archived    :boolean
#  archived_at :datetime
#  logo_url    :string
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Team < ApplicationRecord
  has_many :division_teams
  has_many :divisions, through: :division_teams
  has_many :roster_spots
  has_many :users,     through: :roster_spots
  has_many :team_matches
  has_many :matches,   through: :team_matches

  has_many :games,   through: :matches
  has_many :seasons, through: :divisions
end
