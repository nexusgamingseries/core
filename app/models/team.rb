# == Schema Information
#
# Table name: teams
#
#  id          :uuid             not null, primary key
#  archived    :boolean
#  archived_at :datetime
#  logo_url    :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Team < ApplicationRecord
  has_many :games
  has_many :matches
  has_many :roster_spots
  has_many :seasons
  has_many :users

  has_many :divisions, through: :team_divisions
end
