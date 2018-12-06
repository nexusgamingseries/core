# == Schema Information
#
# Table name: divisions
#
#  id         :uuid             not null, primary key
#  name       :string           not null
#  season_id  :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Division < ApplicationRecord
  belongs_to :season

  has_many :division_matches
  has_many :matches, through: :division_matches
  has_many :division_teams
  has_many :teams,   through: :division_teams

  has_many :users, through: :teams
end
