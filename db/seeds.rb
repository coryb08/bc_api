# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(is_professor: true, first_name: "doug", last_name: "baker", email: "professor@college.com") #id7
User.create!(is_professor: false, first_name: "cory", last_name: "baker", email: "student@college.com") #id8
User.create!(is_professor: true, first_name: "tim", last_name: "johnson", email: "tim@college.com") #id7
Professor.create!(first_name: "doug", last_name: "baker", email: "professor@college.com", user_id: 1)
Professor.create!(first_name: "tim", last_name: "johnson", email: "tim@college.com", user_id: 3)
Student.create!(first_name: "bob", last_name: "baker", email: "student@college.com", user_id: 2, uid: "bb23234nk1", year: "2018-04-06 15:26:12 -0400")
Course.create!(name: "MATH202", size: 100, credits: 3, professor_id: 1)
Course.create!(name: "ENG101", size: 100, credits: 3, professor_id: 2)
Meeting.create!(day: "MON", start: 1200, end: 1400, course_id: 1)
Meeting.create!(day: "WED", start: 1300, end: 1500, course_id: 1)
Meeting.create!(day: "THURS", start: 900, end: 1100, course_id: 2)
