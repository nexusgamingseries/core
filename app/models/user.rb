class User < ApplicationRecord
  has_many :roster_spots

  has_many :teams,   through: :roster_spots
  has_many :matches, through: :team
  has_many :games,   through: :team
  has_many :roles,   through: :user_roles
end
