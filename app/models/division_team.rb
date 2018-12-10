# frozen_string_literal: true

# == Schema Information
#
# Table name: division_teams
#
#  id          :uuid             not null, primary key
#  division_id :uuid             not null
#  team_id     :uuid             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DivisionTeam < ApplicationRecord
  belongs_to :division
  belongs_to :team
end
