# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeds.rb

User.create(
    name: 'Alice Johnson',
    email: 'alice@example.com',
    password: 'password123'
  )
  
  User.create(
    name: 'Bob Smith',
    email: 'bob@example.com',
    password: 'password456'
  )
  
  User.create(
    name: 'Eva Anderson',
    email: 'eva@example.com',
    password: 'password789'
  )
  
  # Add more user data as needed...
  