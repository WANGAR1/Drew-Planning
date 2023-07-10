# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.find_by(name: 'Samantha Nyambura')
unless user1
  user1 = User.new(
    name: 'Samantha Nyambura',
    email: 'samanthanyams4@gmail.com',
    password: 'Nyambura982' # Replace with a valid password for user1
  )
  user1.save(validate: false)
end

user2 = User.find_by(name: 'Wangari Samantha')
unless user2
  user2 = User.new(
    name: 'Wangari Samantha',
    email: 'samantha.wangari2@gmail.com',
    password: 'Wngari304' # Replace with a valid password for user2
  )
  user2.save(validate: false)
end

user3 = User.find_by(name: 'Nyambura Wangari')
unless user3
  user3 = User.new(
    name: 'Nyambura Wangari',
    email: 'samanthanyams5@gmail.com',
    password: 'Smnth2002' # Replace with a valid password for user3
  )
  user3.save(validate: false)
end

User.create!(name: 'User1')
User.create!(name: 'User2')
User.create!(name: 'User3')

puts "Users seeded successfully!"

Event.create!(
  name: 'Birthday Party',
  date: '2023-07-10',
  time: '23:10:24',
  location: '123 Main St',
  description: 'Come celebrate my birthday!',
  user_id: user1.id
)

Event.create!(
  name: 'Wedding',
  date: '2023-08-15',
  time: '18:30:00',
  location: '456 Elm St',
  description: 'Join us for the wedding ceremony!',
  user_id: user2.id
)

Event.create!(
  name: 'Conference',
  date: '2023-09-20',
  time: '09:00:00',
  location: '789 Oak St',
  description: 'A conference for professionals in the industry.',
  user_id: user3.id
)

puts "Events seeded successfully!"
