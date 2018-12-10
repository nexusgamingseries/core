# frozen_string_literal: true

# == Schema Information
#
# Table name: division_matches
#
#  id          :uuid             not null, primary key
#  division_id :uuid             not null
#  match_id    :uuid             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DivisionMatch < ApplicationRecord
  belongs_to :division
  belongs_to :match
end
