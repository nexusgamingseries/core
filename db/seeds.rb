USERS_PER_TEAM = 5

s = Season.create(name: 'Season 1')

d1 = Division.create(name: 'Heroic (E)', season: s)
d2 = Division.create(name: 'Heroic (W)', season: s)

r1 = Role.create(name: 'Caster')
r2 = Role.create(name: 'Moderator')

t1 = Team.create(name: 'Game of Throws')
t2 = Team.create(name: 'ReGen')
t3 = Team.create(name: 'First Pick Nova')
t4 = Team.create(name: 'Soak Every Lane')

m1 = Match.create(division: d1, home_team: t1, away_team: t2)
m2 = Match.create(division: d2, home_team: t3, away_team: t4)

# Assign Teams to Divisions.
t1.divisions << d1
t2.divisions << d1
t3.divisions << d2
t4.divisions << d2

# Create Users and assign them to Teams.
Team.all.each do |t|
  USERS_PER_TEAM.times do |n|
    user = User.create(name: Faker::WorldOfWarcraft.unique.hero)

    # Assign roles if User is 1st or 2nd created on a Team.
    user.roles << r1 if n == 0
    user.roles << r2 if n == 1

    t.users << user
  end
end

# Assign Matches to Teams.
t1.matches << m1
t2.matches << m1
t3.matches << m2
t4.matches << m2
