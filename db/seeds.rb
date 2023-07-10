# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create or find users
user1 = User.find_or_create_by(name: 'Samantha Nyambura') do |user|
  user.email = 'samanthanyams4@gmail.com'
  user.password = 'Nyambura982' # Replace with a valid password for user1
end

user2 = User.find_or_create_by(name: 'Wangari Samantha') do |user|
  user.email = 'samantha.wangari2@gmail.com'
  user.password = 'Wngari304' # Replace with a valid password for user2
end

user3 = User.find_or_create_by(name: 'Nyambura Wangari') do |user|
  user.email = 'samanthanyams5@gmail.com'
  user.password = 'Smnth2002' # Replace with a valid password for user3
end

puts "Users and Events seeded successfully!"

# Create or find events
event1 = Event.find_or_create_by(name: 'Birthday Party') do |event|
  event.date = '2023-07-10'
  event.time = '23:10:24'
  event.location = '123 Main St'
  event.description = 'Come celebrate my birthday!'
  event.user = user1
end

event2 = Event.find_or_create_by(name: 'Wedding') do |event|
  event.date = '2023-08-15'
  event.time = '18:30:00'
  event.location = '456 Elm St'
  event.description = 'Join us for the wedding ceremony!'
  event.user = user2
end

event3 = Event.find_or_create_by(name: 'Conference') do |event|
  event.date = '2023-09-20'
  event.time = '09:00:00'
  event.location = '789 Oak St'
  event.description = 'A conference for professionals in the industry.'
  event.user = user3
end

puts "Events seeded successfully!"

# Create guest records
guest1 = Guest.find_or_create_by(email: 'guest1@example.com') do |guest|
  guest.rsvp_status = 'Attending'
  guest.user = user1
  guest.event = event1
end

guest2 = Guest.find_or_create_by(email: 'guest2@example.com') do |guest|
  guest.rsvp_status = 'Not Attending'
  guest.user = user1
  guest.event = event1
end

guest3 = Guest.find_or_create_by(email: 'guest3@example.com') do |guest|
  guest.rsvp_status = 'Undecided'
  guest.user = user1
  guest.event = event1
end

puts "Guests seeded successfully!"

