# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'ffaker'

City.destroy_all
User.destroy_all

User.create!(
  name: "John Smith",
  email: "john.smith@example.com"
)

10.times do |i|
  city = City.create(name: FFaker::Address.city, population: rand(1000..1_000_000))
  if city.persisted?
    puts "City #{i + 1}: #{city.name} created successfully!"
  else
    puts "City #{i + 1}: Error creating city - #{city.errors.full_messages.join(', ')}"
  end
end

Junction.create(name: 'Central Square', location: 'Downtown')

last_city = City.last
if last_city
  last_city.junctions.create(name: 'Central Square', location: 'Downtown')
  puts "Junction created successfully for the last city: #{last_city.name}"
else
  puts "No cities found. Please create some cities first."
end
