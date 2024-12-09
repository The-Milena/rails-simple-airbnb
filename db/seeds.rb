# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

Flat.destroy_all

puts "Taking away old seed"

10.times do Flat.create!(
  name: Faker::Book.title,
  address: Faker::Address.full_address,
  description: Faker::TvShows::GameOfThrones.quote,
  price_per_night: Random.new.rand(50..350),
  number_of_guests: Random.new.rand(1..20),
  picture_url: 'https://images.unsplash.com/photo-1519302959554-a75be0afc82a?q=80&w=2880&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  )
end

puts "created #{Flat.count} new flats"
