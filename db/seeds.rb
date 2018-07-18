# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = []

users << User.create(
  username: 'admin',
  password: 'password',
  name: 'Admin Boy',
  email: 'colinwarmstrong@gmail.com',
  phone_number: '8156852473',
  city: 'Denver',
  role: 1)

users << User.create(
  username: 'default',
  password: 'password',
  name: 'Default Boy',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

users << User.create(
  username: 'xmen',
  password: 'password',
  name: 'Xmen Boy',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

users << User.create(
  username: 'colin',
  password: 'password',
  name: 'Colin',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

users << User.create(
  username: 'tristan',
  password: 'password',
  name: 'Tristan',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

users << User.create(
  username: 'stephen',
  password: 'password',
  name: 'Stephen',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

users << User.create(
  username: 'matt',
  password: 'password',
  name: 'Matt',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

users << User.create(
  username: 'Lucas',
  password: 'password',
  name: 'Lucas',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

users << User.create(
  username: 'john',
  password: 'password',
  name: 'John',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

users << User.create(
  username: 'jp',
  password: 'password',
  name: 'JP',
  email: 'default@gmail.com',
  phone_number: '5555555555',
  city: 'Denver')

categories = []

categories << Category.create(title: 'Outdoors', description: 'Fresh air and sunshine')
categories << Category.create(title: 'Technology', description: 'The latest and greatest tech')
categories << Category.create(title: 'Academics', description: 'Wrting, reading, and arithmetic')
categories << Category.create(title: 'Arts', description: 'Let your artistic side shine')
categories << Category.create(title: 'Athletics', description: 'For the love of the game')
categories << Category.create(title: 'Mechanical', description: 'Get your hands dirty')
categories << Category.create(title: 'Carpentry', description: 'Hammers and nails')
categories << Category.create(title: 'Cooking', description: "That's a spicy meatball")
categories << Category.create(title: 'Language', description: 'Learn a language, explore the world')

skills = []

skills << categories.sample.skills.create(title: 'Baseball', description: "America's pastime")
skills << categories.sample.skills.create(title: 'Football', description: "Touchdowns and stuff")
skills << categories.sample.skills.create(title: 'Hockey', description: "Fuel your inner Canadian")
skills << categories.sample.skills.create(title: 'Soccer', description: "No hands")
skills << categories.sample.skills.create(title: 'Running', description: "Jogging all day every day")
skills << categories.sample.skills.create(title: 'Lacrosse', description: "It's a sport!")
skills << categories.sample.skills.create(title: 'Ping-Pong', description: "It's like tennis but on a table")
skills << categories.sample.skills.create(title: 'Pool', description: "Impress your friends at the bar")

skills << categories.sample.skills.create(title: 'Camping', description: 'Who needs showers anyway?')
skills << categories.sample.skills.create(title: 'Climbing', description: 'The ground is for squares')
skills << categories.sample.skills.create(title: 'Hiking', description: 'Like walking, but more extreme')
skills << categories.sample.skills.create(title: 'Swimming', description: 'Conquer the aquatic world')
skills << categories.sample.skills.create(title: 'Kayaking', description: "It's like canoeing but more lonely")

skills << categories.sample.skills.create(title: 'Ruby', description: "The programming language of kings")
skills << categories.sample.skills.create(title: 'Python', description: "The programming language of squares")
skills << categories.sample.skills.create(title: 'CSS', description: "Make your apps look pretty")
skills << categories.sample.skills.create(title: 'Typing', description: "120 words per minute or bust")
skills << categories.sample.skills.create(title: 'Printer Repair', description: "Those things always break")

skills << categories.sample.skills.create(title: 'Calculus', description: 'Integrations and derivatives')
skills << categories.sample.skills.create(title: 'Writing', description: 'Become the next Shakespeare')
skills << categories.sample.skills.create(title: 'Chemistry', description: 'The science of change')
skills << categories.sample.skills.create(title: 'History', description: 'Learn to fear the past')
skills << categories.sample.skills.create(title: 'Gym Class', description: 'Who gets a mentor for gym class?')

skills << categories.sample.skills.create(title: 'Painting', description: 'Make some pretty paintings')
skills << categories.sample.skills.create(title: 'Sculpting', description: 'Make some pretty sculptures')
skills << categories.sample.skills.create(title: 'Creative Writing', description: 'Make some cool stories')
skills << categories.sample.skills.create(title: 'Acting', description: 'Get that role in the school play')
skills << categories.sample.skills.create(title: 'Singing', description: 'Become the next Taylor Swift')

skills << categories.sample.skills.create(title: 'Baking', description: 'Baked goods for days')
skills << categories.sample.skills.create(title: 'Grilling', description: 'Grilled meats for days')
skills << categories.sample.skills.create(title: 'Meal Prep', description: 'Meals for seven days')
skills << categories.sample.skills.create(title: 'Healthy Eating', description: 'Low calories for days')
skills << categories.sample.skills.create(title: 'Restaurant Management', description: 'Control your unruly kitchen staff')

skills << categories.sample.skills.create(title: 'Car Repair', description: 'Change that oil')
skills << categories.sample.skills.create(title: 'Appliance Repair', description: 'Fix that broken fridge')
skills << categories.sample.skills.create(title: 'HVAC', description: 'Keep that AC running')
skills << categories.sample.skills.create(title: 'Small Engine Repair', description: 'Fix that broken mower')
skills << categories.sample.skills.create(title: 'Computer Repair', description: 'Fix that broken computer')

skills << categories.sample.skills.create(title: 'Framing', description: 'Build a house')
skills << categories.sample.skills.create(title: 'Roofing', description: 'Shingle that roof')
skills << categories.sample.skills.create(title: 'Plumbing', description: 'Fix those leaky pipes')
skills << categories.sample.skills.create(title: 'Drywalling', description: 'Build some walls')
skills << categories.sample.skills.create(title: 'Power Tools', description: 'Learn to use a circular saw')

skills << categories.sample.skills.create(title: 'English', description: 'Hello')
skills << categories.sample.skills.create(title: 'Spanish', description: 'Hola')
skills << categories.sample.skills.create(title: 'French', description: 'Bonjour')
skills << categories.sample.skills.create(title: 'German', description: 'Hallo')
skills << categories.sample.skills.create(title: 'Italian', description: 'Ciao')

users.each do |user|
  5.times do
    UserSkill.create(user_id: user.id, skill_id: skills.sample.id)
  end
  UserSkill.create(user_id: user.id, skill_id: skills.sample.id, mentoring?: true)
end
