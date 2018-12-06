# == Schema Information
#
# Table name: users
#
#  id                 :uuid             not null, primary key
#  archived           :boolean          default(FALSE)
#  archived_at        :datetime
#  mmr                :integer
#  rank               :jsonb
#  battle_tag         :string
#  email              :string
#  encrypted_password :string
#  hotslogs_id        :string
#  name               :string
#  site_role          :string
#  toon_handle        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class User < ApplicationRecord
  has_many :roster_spots

  has_many :teams,   through: :roster_spots
  has_many :matches, through: :team
  has_many :games,   through: :team
  has_many :roles,   through: :user_roles
end
