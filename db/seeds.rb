# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s = Season.create(name: 'Season 1')

d1 = Division.create(name: 'Heroic (E)', season: s)
d2 = Division.create(name: 'Heroic (W)', season: s)
