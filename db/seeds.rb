require "faker"

User.delete_all

possible_statuses = ["active", "inactive"]

100.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    status: possible_statuses.sample
  )
end

puts "Seeded 100 users into the database."
