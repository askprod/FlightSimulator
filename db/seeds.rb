# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

codes = ["ATL", "LAX", "ORD", "DFW", "DEN", "LDH", "LDG", "MAN", "ORY", "CDG"]

codes.each do |code|
  Airport.create(airport_code: code)
end

50.times do |n|
  Flight.create(duration: rand(1..20), departure_date: Faker::Date.unique.forward(50), departure_airport_id: rand(Airport.first.id..Airport.last.id), arrival_airport_id: rand(Airport.first.id..Airport.last.id))
end