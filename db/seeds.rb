# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  sports = ["Basketball", "Golf", "Soccer", "Baseball"]
  cities = ["Seattle", "Tacoma", "Bellingham", "Spokane"]
  date = ["Sat, May 11 3:00PM", "Sun, May 12 3:00PM","Sat, May 18 5:00PM","Sun, May 19 4:00PM","Sat, May 25 2:00PM","Sun, May 26 1:00PM"]
  Game.create(
    sport: sports.sample,
    city: cities.sample,
    address: Faker::Games::Pokemon.location,
    date: date.sample,
    price: "Free",
    contact: Faker::Internet.email,
    confirmed: rand(1..4)
  )
end
