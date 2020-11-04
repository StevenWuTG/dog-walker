# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying seeds"
Dog.destroy_all
Walker.destroy_all
Signup.destroy_all

puts "making dogs"
snoop = Dog.create(name: "Snoop", breed:"Gansta", age: 50, sex: "M")
luma = Dog.create(name: "Luma", breed: "Labador", age: 3, sex: "F")

puts "making walkers"
steven = Walker.create(first_name: "Steven", last_name: "Wu", email:"stevenwu@email.com", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/SNice.svg/1200px-SNice.svg.png")
alice = Walker.create(first_name: "Alice", last_name: "Jansen", email:"alicejansen@email.com", img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/SNice.svg/1200px-SNice.svg.png")


puts "seeds done"



