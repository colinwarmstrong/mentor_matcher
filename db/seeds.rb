# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  username: 'admin',
  password: 'password',
  name: 'Admin Boi',
  email: 'colinwarmstrong@gmail.com',
  phone_number: '8156852473',
  city: 'Denver',
  role: 1)

User.create(
  username: 'default',
  password: 'password',
  name: 'Default Boi',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

Category.create(title: 'Outdoors', description: 'Fresh air and sunshine')
Category.create(title: 'Music', description: 'Melodic bliss')
Category.create(title: 'Technology', description: 'The latest and greatest tech')
Category.create(title: 'Academics', description: 'Wrting, reading, and arithmetic')
Category.create(title: 'Arts', description: 'Let your artistic side shine')
Category.create(title: 'Athletics', description: 'For the love of the game')
Category.create(title: 'Mechanical', description: 'Get your hands dirty')
Category.create(title: 'Carpentry', description: 'Hammers and nails')
Category.create(title: 'Cooking', description: "That's a spicy meatball")
Category.create(title: 'Language', description: 'Learn a language, explore the world')
