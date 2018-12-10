# frozen_string_literal: true

# == Schema Information
#
# Table name: user_roles
#
#  id          :uuid             not null, primary key
#  archived_at :datetime
#  role_id     :uuid             not null
#  user_id     :uuid             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class UserRole < ApplicationRecord
  belongs_to :role
  belongs_to :user
end
