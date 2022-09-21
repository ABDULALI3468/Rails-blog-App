# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# student = Student.create(
#   firstname:'Ravi',
#   lastname:'Singh',
#   email:'ravi@bootcamp.com'
# )

40.times do|i|
  puts"Creatingstudent#{i+1}"
  User.create(name: "User #{i+1} ", photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: "Teacher from Country with code #{i+1}.", posts_counter: 0)
end

# Student.all.each do |student|
#   student.blogs.create(title: "Dummy Blog for Student #{ student.id }", content: "Custom content pending")
#   student.blogs.create(title: "Dummy Blog for Student #{ student.id }", content: "Custom content pending")
# end
