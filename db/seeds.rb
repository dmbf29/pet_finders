require 'faker'
# Pet.destroy_all

puts "creating 100 pets..."
100.times do
  Pet.create!(
    name: Faker::Beer.name,
    species: Pet::SPECIES.sample,
    found_on: Date.today - rand(1..10),
    address: Faker::Address.street_address
  )
end

puts "...finished creating #{Pet.count} pets"
