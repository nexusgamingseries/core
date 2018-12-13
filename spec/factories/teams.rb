# frozen_string_literal: true

# == Schema Information
#
# Table name: teams
#
#  id          :uuid             not null, primary key
#  archived    :boolean          default(FALSE), not null
#  archived_at :datetime
#  logo_url    :string
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


FactoryBot.define do
  factory :team do
    logo_url { Faker::LoremPixel.image }
    name { Faker::Team.name }
  end
end
