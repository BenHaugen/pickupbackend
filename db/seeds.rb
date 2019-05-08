# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    name: "ben",
    password: "ben"
)

50.times do
  sports = ["Soccer", "Baseball"]
  locations = ["Magnolia Playfields", "Evergreen Playfields", "Union Playfields", "Halls Playfields", "Ryle Playfields", "Lacey Playfields", "Olympic Playfields", "Bonds Playfields", "Larry H. Playfields", "Sunnyland Playfields", "Sunnyville Playfields", "Vice Playfields"]
  cities = ["Seattle", "Tacoma", "Bellingham", "Spokane"]
  date = ["Sat, May 11 3:00PM", "Sun, May 12 3:00PM","Sat, May 18 5:00PM","Sun, May 19 4:00PM","Sat, May 25 2:00PM","Sun, May 26 1:00PM"]
  OrganizedGame.create(
    user_id: 1,
    sport: sports.sample,
    city: cities.sample,
    address: locations.sample,
    date: date.sample,
    price: "Free",
    contact: Faker::Internet.email,
    confirmed: rand(1..4)
  )
end

50.times do
  cities1 = ["Seattle", "Tacoma", "Bellingham", "Spokane"]
  date = ["Sat, May 11 3:00PM", "Sun, May 12 3:00PM","Sat, May 18 5:00PM","Sun, May 19 4:00PM","Sat, May 25 2:00PM","Sun, May 26 1:00PM"]
  gyms = ["Cascadia Middle School", "St. Paul Elementary", "Greenwood Outdoor Courts", "Ryder High School", "Ryle High School", "MLK Courts", "Alki Middle School", "Heritage High School", "John Hopkins Outdoor Courts"]
  OrganizedGame.create(
    user_id: 1,
    sport: "Basketball",
    city: cities1.sample,
    address: gyms.sample,
    date: date.sample,
    price: "Free",
    contact: Faker::Internet.email,
    confirmed: rand(1..4)
  )
end

50.times do
  cities2 = ["Seattle", "Tacoma", "Bellingham", "Spokane"]
  courses = ["PINE VALLEY G.C.", "AUGUSTA NATIONAL G.C.", "CYPRESS POINT CLUB", "OAKMONT C.C.", "PEBBLE BEACH G. LINKS", "SAND HILLS G.C.", "FISHERS ISLAND CLUB", "CRYSTAL DOWNS C.C.", "FRIAR'S HEAD G.C.", "MUIRFIELD VILLAGE G.C.", "PACIFIC DUNES", "RIVIERA C.C.", "THE OCEAN COURSE", "SHADOW CREEK"]
  prices = ["$32/18 holes", "$29/18 holes", "$44/18 holes", "$54/18 holes", "$76/18 holes", "$35/18 holes", "$38/18 holes", "$17/9 holes", "$10/9 holes", "$27/9 holes", "$23/9 holes", "$31/9 holes", "$27/9 holes"]
  date = ["Sat, May 11 3:00PM", "Sun, May 12 3:00PM","Sat, May 18 5:00PM","Sun, May 19 4:00PM","Sat, May 25 2:00PM","Sun, May 26 1:00PM"]
  OrganizedGame.create(
    user_id: 1,
    sport: "Golf",
    city: cities2.sample,
    address: courses.sample,
    date: date.sample,
    price: prices.sample,
    contact: Faker::Internet.email,
    confirmed: rand(1..4)
  )
end
