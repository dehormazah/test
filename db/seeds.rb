# Test Data generated with faker gem

require 'faker'

num_records = 50

# Users creation
puts 'started loading User data'
User.destroy_all
User.reset_pk_sequence

num_records.times do |row|
  User.create(name: Faker::Name.name,
  email: Faker::Internet.free_email,
  bio: Faker::Movie.quote)
end

puts 'finished loading User data'


# Achievements creation
puts 'started loading Achievement data'
Achievement.destroy_all
Achievement.reset_pk_sequence

num_records.times do |row|
  Achievement.create(name: Faker::DrWho.catch_phrase,
  description: Faker::Hobbit.quote ,
  date: Faker::Date.forward(15))
end

puts 'finished loading Achievement data'


# Comments creations
puts 'started loading Comment data'
Comment.destroy_all
Comment.reset_pk_sequence


num_records.times do |row|
  Comment.create(description: Faker::DrWho.catch_phrase,
  date: Faker::Date.forward(15),
  user_id: Faker::Number.between(1, num_records))

end

puts 'finished loading Comment data'


# Diet creations
puts 'started loading Diet data'
Diet.destroy_all
Diet.reset_pk_sequence

num_records.times do |row|
  Diet.create(name: Faker::Food.dish,
  sort: Faker::Food.measurement,
  start_date: Faker::Date.forward(15),
  end_date: Faker::Date.forward(40))
end

puts 'finished loading Diet data'


# Events creations
puts 'started loading Event data'
Event.destroy_all
Event.reset_pk_sequence

num_records.times do |row|
 Event.create(name: Faker::SiliconValley.invention,
  description: Faker::SiliconValley.quote,
  start_date: Faker::Date.forward(5),
  end_date: Faker::Date.forward(20))
end

puts 'finished loading Event data'

# Foods creations
puts 'started loading Food data'
Food.destroy_all
Food.reset_pk_sequence


num_records.times do |row|
 Food.create(name: Faker::Food.spice,
  sort: Faker::Food.metric_measurement,
  description: Faker::Coffee.notes,
  averageprice: Faker::Number.between(4000, 10000))
end

puts 'finished loading Food data'

# Groups creations
puts 'started loading Group data'
Group.destroy_all
Group.reset_pk_sequence

num_records.times do |row|
 Group.create(name: Faker::RockBand.name,
  sort: Faker::StarWars.specie ,
  description: Faker::StarWars.wookiee_sentence,
  num_members: Faker::Number.between(1, 10))
end

puts 'finished loading Group data'

# Histories creations
puts 'started loading History data'
History.destroy_all
History.reset_pk_sequence
id = 1
num_records.times do |row|
 History.create(description: Faker::HarryPotter.house,
  genre: Faker::Dog.gender,
  birth_date: Faker::Date.birthday(17, 28),
  age: Faker::Number.between(17, 28),
  weight: Faker::Number.between(40, 90) ,
  height: Faker::Number.between(120, 190),
  start: Faker::Date.forward(4),
  num_achievements: Faker::Number.between(1, 10),
  num_diets: Faker::Number.between(1, 10),
  num_plans: Faker::Number.between(1, 10),
  num_groups: Faker::Number.between(1, 10),
  num_events: Faker::Number.between(1, 10),
  level: Faker::Hacker.noun,
  user_id: id)
  id+=1
end

puts 'finished loading History data'

# Phyactivities creations
puts 'started loading Phyactivity data'
Phyactivity.destroy_all
Phyactivity.reset_pk_sequence

num_records.times do |row|
 Phyactivity.create(name: Faker::Hacker.noun,
  description: Faker::Hacker.say_something_smart ,
  duration: Faker::Number.between(1, 3) ,
  required_elements: Faker::Beer.name)
end

puts 'finished loading Phyactivity data'

# Places creations
puts 'started loading Place data'
Place.destroy_all
Place.reset_pk_sequence


num_records.times do |row|
 Place.create(name: Faker::StarWars.planet,
  location: Faker::StarWars.vehicle ,
  latitude: Faker::Number.between(70, 80) ,
  longitude: Faker::Number.between(70, 80))

end

puts 'finished loading Place data'

# Plans creations
puts 'started loading Plan data'
Plan.destroy_all
Plan.reset_pk_sequence

num_records.times do |row|
 Plan.create(name: Faker::Superhero.name,
  sort: Faker::Superhero.power ,
  description: Faker::Science.element ,
  start_date: Faker::Date.forward(5),
  end_date: Faker::Date.forward(20))

end

puts 'finished loading Plan data'

# Tips activities creations
puts 'started loading Tipactivity data'
Tipactivity.destroy_all
Tipactivity.reset_pk_sequence

num_records.times do |row|
 Tipactivity.create(description: Faker::RuPaul.quote)
end

puts 'finished loading Tipactivity data'

# Tips diets creations
puts 'started loading Tipdiet data'
Tipdiet.destroy_all
Tipdiet.reset_pk_sequence

num_records.times do |row|
 Tipdiet.create(description: Faker::Simpsons.quote)
end

puts 'finished loading Tipdiet data'

#join tables

# Join diets and foods
puts 'started loading Dietfoodrecord data'
Dietfoodrecord.destroy_all
Dietfoodrecord.reset_pk_sequence

num_records.times do |row|
 Dietfoodrecord.create(diet_id: Faker::Number.between(1, num_records),
  food_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Dietfoodrecord data'

# Join events and places
puts 'started loading Eventplacerecord data'
Eventplacerecord.destroy_all
Eventplacerecord.reset_pk_sequence
id=1
num_records.times do |row|
 Eventplacerecord.create(event_id: id,
  place_id: Faker::Number.between(1, num_records))
  id+=1
end

puts 'finished loading Eventplacerecord data'

# Join places and phyactivities
puts 'started loading Placephyactivityrecord data'
Placephyactivityrecord.destroy_all
Placephyactivityrecord.reset_pk_sequence

num_records.times do |row|
 Placephyactivityrecord.create(place_id: Faker::Number.between(1, num_records),
  phyactivity_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Placephyactivityrecord data'

# Join plans and phyactivities
puts 'started loading Planphyactivityrecord data'
Planphyactivityrecord.destroy_all
Planphyactivityrecord.reset_pk_sequence

num_records.times do |row|
 Planphyactivityrecord.create(plan_id: Faker::Number.between(1, num_records),
  phyactivity_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Planphyactivityrecord data'

# Join users and achievements
puts 'started loading Userachievementrecord data'
Userachievementrecord.destroy_all
Userachievementrecord.reset_pk_sequence

num_records.times do |row|
 Userachievementrecord.create(user_id: Faker::Number.between(1, num_records),
  achievement_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Userachievementrecord data'

# Join users and diets
puts 'started loading Userdietrecord data'
Userdietrecord.destroy_all
Userdietrecord.reset_pk_sequence

num_records.times do |row|
 Userdietrecord.create(user_id: Faker::Number.between(1, num_records),
  diet_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Userdietrecord data'

# Join users and events
puts 'started loading Usereventrecord data'
Usereventrecord.destroy_all
Usereventrecord.reset_pk_sequence

num_records.times do |row|
 Usereventrecord.create(user_id: Faker::Number.between(1, num_records),
  event_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Usereventrecord data'

# Join users and groups
puts 'started loading Usergrouprecord data'
Usergrouprecord.destroy_all
Usergrouprecord.reset_pk_sequence

num_records.times do |row|
 Usergrouprecord.create(user_id: Faker::Number.between(1, num_records),
  group_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Usergrouprecord data'

# Join users and plans
puts 'started loading Userplanrecord data'
Userplanrecord.destroy_all
Userplanrecord.reset_pk_sequence

num_records.times do |row|
 Userplanrecord.create(user_id: Faker::Number.between(1, num_records),
  plan_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Userplanrecord data'

# Join users and tipactivities
puts 'started loading Usertipactivityrecord data'
Usertipactivityrecord.destroy_all
Usertipactivityrecord.reset_pk_sequence

num_records.times do |row|
 Usertipactivityrecord.create(user_id: Faker::Number.between(1, num_records),
  tipactivity_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Usertipactivityrecord data'

# Join users and tipdiets
puts 'started loading Usertipdietrecord data'
Usertipdietrecord.destroy_all
Usertipdietrecord.reset_pk_sequence

num_records.times do |row|
 Usertipdietrecord.create(user_id: Faker::Number.between(1, num_records),
  tipdiet_id: Faker::Number.between(1, num_records))
end

puts 'finished loading Usertipdietrecord data'
