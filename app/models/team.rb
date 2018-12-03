class Team < ApplicationRecord

  has_many :users
  has_many :seasons
  has_many :matches
  has_many :games

end
