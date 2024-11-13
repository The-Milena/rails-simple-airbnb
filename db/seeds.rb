# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Flat.destroy_all
puts 'Destroying flats...'

puts 'Creating new flats...'
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Loft with Rooftop in Paris',
  address: '12 Rue Saint Maur',
  description: 'Just amazing',
  price_per_night: 120,
  number_of_guests: 4
)
Flat.create!(
  name: 'Cute & charming apartment in Berlin Kreuzberg',
  address: 'Oberbaumbrücke',
  description: 'Nice to stay in summer for sightseeing or a city-weekend-trip to party',
  price_per_night: 60,
  number_of_guests: 2
)
Flat.create!(
  name: 'Amazing Maisonette in Marais',
  address: '10 Rue des Rosiers',
  description: 'Dive into the real Paris feeling',
  price_per_night: 100,
  number_of_guests: 2
)

puts "#{Flat.count} flats created"
