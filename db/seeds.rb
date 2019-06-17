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
User.create(username: "Derpy", password: "123", first_name: "Sam", last_name: "Guo")
User.create(username: "Hodor", password: "234", first_name: "Hodor", last_name: "Hodor")
User.create(username: "Asuna", password: "SAO", first_name: "Asuna", last_name: "Yuuki")
User.create(username: "Araragi", password: "123", first_name: "Araragi", last_name: "Something")
User.create(username: "Sploosh", password: "DND", first_name: "Cal", last_name: "Kaj")

#seed data for projects
Project.create(title: "Mod 1 Project", description: "QUIZZIA", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 1)
Project.create(title: "Mod 2 Project", description: "DUNGEONS AND DRAGONS MEETUP FINDER", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 1)
Project.create(title: "Mod 3 Project", description: "SPACE X COOKIE MONSTER", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 1)
Project.create(title: "Mod 4 Project", description: "RATE MY INSTRUCTOR", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 2)
Project.create(title: "Mod 5 Project", description: "PROGRESSING FORWARD", due_date: Faker::Date.forward(9001), percentage: 0, project_lead_id: 2)

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
