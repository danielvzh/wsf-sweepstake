# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database'
Member.destroy_all

puts 'Creating members'\

100.times do
  member = Member.create(
    name: Faker::Name.first_name,
    points: rand(1..10)
  )
  puts "Member with id: #{member.id} has been created"
end
puts 'Finished!'
