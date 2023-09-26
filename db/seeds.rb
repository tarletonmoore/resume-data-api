# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# brian = Student.create!(first_name: "Brian", last_name: "Rice", email: "brian@brian.com", password: "password", phone: "111-222-3333", bio: "actualize instructor and avid tswift fan", linkedin: "linkedin/brian", personal_blog: "quinoa", twitter: "tswiftfan1", online_resume: "resume/brian", github: "github/brian", photo: "https://www.clipartmax.com/png/middle/171-1717870_stockvader-predicted-cron-for-may-user-profile-icon-png.png")

exp = Experience.create!(start_date: "1/1/23", job: "instructor", company: "actualize", details: "teaches stuff", student_id: 1)

ed = Education.create!(start_date: "12/30/22", end_date: "12/31/22", degree: "computer science", university_name: "Syracuse", details: "masters", student_id: 1)

skill = Skill.create!(skill_name: "ruby", student_id: 1)

cap = Capstone.create!(name: "sf parking ticket", description: "how to not get a parking ticket", url: "briansapp.com", student_id: 1)
