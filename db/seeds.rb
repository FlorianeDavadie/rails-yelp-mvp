# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# Restaurant.destroy_all

# puts "Creating restaurants..."
# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "0727278929"}
# pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese", phone_number: "03 27 29 10 27"}
# le_ciel = { name: "le_ciel", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "0727278929"}
# la_tour_d_argent = { name: "la_tour_d_argent", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese", phone_number: "03 27 29 10 27"}
# le_jules_verne = { name: "le_jules_verne", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "0727278929"}

# [dishoom, pizza_east].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
# puts "Finished!"

require 'faker'
Restaurant.destroy_all

puts 'Creating 5 fake restaurants...'
5.times do
  Restaurant.create(
    category: %w(Chinese Italian Japanese French Belgian).sample,
    name: Faker::Company.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number
  )
end
puts 'Finished!'
