# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = (1..1_000).map do |j|
  { name: "User #{j}", created_at: Time.now, updated_at: Time.now, deleted_at: nil }
end
User.insert_all(users)
1.upto(1_000) do |i|
  deleted_users = (1..1_000).map do |j|
    { name: "User #{j}", created_at: Time.now, updated_at: Time.now, deleted_at: Time.now }
  end
  User.insert_all(deleted_users)
  puts "Created #{i}k users"
end
