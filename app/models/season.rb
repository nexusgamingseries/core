# == Schema Information
#
# Table name: seasons
#
#  id         :uuid             not null, primary key
#  active     :boolean          default(FALSE)
#  starts_on  :date
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Season < ApplicationRecord
  has_many :divisions
end
