FactoryBot.define do
  factory :team do
    logo_url { Faker::LoremPixel.image }
    name { Faker::Team.name }
  end
end
