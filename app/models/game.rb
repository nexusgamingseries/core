# frozen_string_literal: true

# == Schema Information
#
# Table name: games
#
#  id         :uuid             not null, primary key
#  stats      :jsonb
#  loser_id   :uuid
#  winner_id  :uuid
#  match_id   :uuid             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  belongs_to :match

  belongs_to :loser,  optional: true
  belongs_to :winner, optional: true

  has_one :away_team, through: :match
  has_one :home_team, through: :match
end
