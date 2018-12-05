class Team < ApplicationRecord
  has_many :games
  has_many :matches
  has_many :roster_spots
  has_many :seasons
  has_many :users

  has_many :divisions, through: :team_divisions
end
