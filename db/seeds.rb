# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Seed grades
grades = ["Lớp 1","Lớp 2","Lớp 3","Lớp 4","Lớp 5","Lớp 6", "Lớp 7",
         "Lớp 8", "Lớp 9", "Lớp 10", "Lớp 11", "Lớp 12"]
grades.each do |grade|
    Grade.create!(name:  grade)
end

subjects = [ "Tự nhiên xã hội", "Khoa học" , "Âm nhạc", "Mỹ thuật", "Đạo đức", "Thể dục", "Tin học", "Toán", "Vật lí", "Hóa học", "Sinh học", "Tiếng Anh",
           "Ngữ Văn", "Tiếng Việt", "Lịch sử", "Địa lí", "Công nghệ", "Giáo dục Công dân", "Giáo dục quốc phòng"].sort!
subjects.each do |subject|
    Subject.create!(name: subject)
end
 
User.create!(email: "admin@gmail.com",
    password: "password",
    password_confirmation: "password",
    admin: true)
