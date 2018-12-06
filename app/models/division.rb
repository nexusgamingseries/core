# == Schema Information
#
# Table name: divisions
#
#  id         :uuid             not null, primary key
#  name       :string
#  season_id  :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Division < ApplicationRecord
  belongs_to :season

  has_many :teams, through: :team_divisions
end
