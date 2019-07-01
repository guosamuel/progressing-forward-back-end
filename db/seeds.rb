# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'RUNNING SEED FILE'


#seed data for Users
User.create(username: "Guest", password: "123", first_name: "Sam", last_name: "Guo")
User.create(username: "Hodor", password: "123", first_name: "Hodor", last_name: "Hodor")
User.create(username: "Asuna", password: "123", first_name: "Asuna", last_name: "Yuuki")
User.create(username: "Araragi", password: "123", first_name: "Araragi", last_name: "Something")
User.create(username: "Sploosh", password: "123", first_name: "Cal", last_name: "Kaj")
User.create(username: "Vera", password: "123", first_name: "Vera", last_name: "Vera")
User.create(username: "Jeff", password: "123", first_name: "Jeff", last_name: "Jeff")
User.create(username: "John", password: "123", first_name: "John", last_name: "Wick")
User.create(username: "Emiya", password: "123", first_name: "Emiya", last_name: "Shirou")
User.create(username: "Kirito", password: "123", first_name: "Kazuto", last_name: "Kirigaya")
User.create(username: "Alice", password: "123", first_name: "Alice", last_name: "Zuberg")
User.create(username: "Eugeo", password: "123", first_name: "Eugeo", last_name: "Eugeo")
User.create(username: "Saber", password: "123", first_name: "King", last_name: "Arthur")
User.create(username: "Illya", password: "123", first_name: "Illya", last_name: "von Einzbern")


#seed data for projects
Project.create(title: "Mod 1 Project", description: "QUIZZIA", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 1)
Project.create(title: "Mod 2 Project", description: "DUNGEONS AND DRAGONS MEETUP FINDER", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 1)
Project.create(title: "Mod 3 Project", description: "SPACE X COOKIE MONSTER", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 1)
Project.create(title: "Mod 4 Project", description: "RATE MY INSTRUCTOR", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 2)
Project.create(title: "Mod 5 Project", description: "PROGRESSING FORWARD", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 2)
Project.create(title: "Getting a Job", description: "Self-explanatory...", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 4)

#seed data for user_projects
UserProject.create(user_id: 1, project_id: 1)
UserProject.create(user_id: 1, project_id: 2)
UserProject.create(user_id: 1, project_id: 3)
UserProject.create(user_id: 1, project_id: 4)
UserProject.create(user_id: 1, project_id: 5)
UserProject.create(user_id: 2, project_id: 1)
UserProject.create(user_id: 2, project_id: 3)
UserProject.create(user_id: 2, project_id: 4)
UserProject.create(user_id: 2, project_id: 5)
UserProject.create(user_id: 3, project_id: 1)
UserProject.create(user_id: 4, project_id: 1)
UserProject.create(user_id: 5, project_id: 1)
UserProject.create(user_id: 4, project_id: 6)

#seed data for tasks
Task.create(project_id: 1, title: "BACK END", description: "Figure out how Ruby on Rails work", due_date: Faker::Date.forward(9000), percentage: 0)
Task.create(project_id: 1, title: "FRONT END", description: "Figure out how React work", due_date: Faker::Date.forward(9000), percentage: 0)
Task.create(project_id: 2, title: "BACK END", description: "Figure out how Ruby on Rails work", due_date: Faker::Date.forward(9000), percentage: 0)
Task.create(project_id: 2, title: "FRONT END", description: "Figure out how React work", due_date: Faker::Date.forward(9000), percentage: 0)
Task.create(project_id: 3, title: "BACK END", description: "Figure out how Ruby on Rails work", due_date: Faker::Date.forward(9000), percentage: 0)
Task.create(project_id: 3, title: "FRONT END", description: "Figure out how React work", due_date: Faker::Date.forward(9000), percentage: 0)
Task.create(project_id: 4, title: "BACK END", description: "Figure out how Ruby on Rails work", due_date: Faker::Date.forward(9000), percentage: 0)
Task.create(project_id: 4, title: "FRONT END", description: "Figure out how React work", due_date: Faker::Date.forward(9000), percentage: 0)
Task.create(project_id: 5, title: "BACK END", description: "Figure out how Ruby on Rails work", due_date: Faker::Date.forward(9000), percentage: 0)
Task.create(project_id: 5, title: "FRONT END", description: "Figure out how React work", due_date: Faker::Date.forward(9000), percentage: 0)

puts 'DONE RUNNING SEED FILE'
