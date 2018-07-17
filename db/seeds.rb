# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  username: 'admin',
  password: 'password',
  name: 'Colin',
  email: 'colinwarmstrong@gmail.com',
  phone_number: '8156852473',
  city: 'Denver',
  role: 1)

User.create!(
  username: 'default',
  password: 'password',
  name: 'Default Boy',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')
