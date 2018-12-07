# == Schema Information
#
# Table name: roster_spots
#
#  id          :uuid             not null, primary key
#  archived    :boolean          default(FALSE)
#  archived_at :datetime
#  joined_at   :datetime
#  role        :string
#  team_id     :uuid             not null
#  user_id     :uuid             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class RosterSpot < ApplicationRecord
  belongs_to :team
  belongs_to :user
end
