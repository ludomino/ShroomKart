# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "open-uri"

puts "Cleaning database..."
Kart.destroy_all

# arr = User.all
# user: arr.sample
user_1 = User.create(name: "Mario", email: "mario@mail.com", password: "mario123")
user_2 = User.create(name: "Peach", email: "peach@mail.com", password: "peach123")
user_3 = User.create(name: "Donkey Kong", email: "donkey@mail.com", password: "donkey123")
user_4 = User.create(name: "Yoshi", email: "yoshi@mail.com", password: "yoshi123")
user_5 = User.create(name: "bowser", email: "bowser@mail.com", password: "bowser123")

Kart.create(user: user_1, image: "url('app/assets/images/Mario.png')", name: "Standard Kart", price: "20€", special_skills: "drift" )
Kart.create(user: user_2, image: "url('app/assets/images/Peach.jpeg')", name: "City tripper", price: "15€", special_skills: "mini turbo, grip water" )
Kart.create(user: user_3, image: "url('app/assets/images/Donkey_Kong.png')", name: "Cat Cruiser", price: "30€", special_skills: "ground, anti -gravity")
Kart.create(user: user_4, image: "url('app/assets/images/YoshiKart.jpeg')", name: "Yoshi Bike", price: "35€", special_skills: "drift, speed, hability")
Kart.create(user: user_5, image: "url('app/assets/images/Bowser.png')", name: "The Duke", price: "40€", special_skills: "fly, acceleration, speed")

# Seed through API
# response = URI.open('https://mario-kart-tour-api.herokuapp.com/api/v1/karts').read

# JSON.parse(response).first(1).each do |kart|
#   # kart = Kart.new(User: User.all.sample)
#   data = kart.reject { |key, value| !Kart.column_names.include?(key) }
#   Kart.create!(data.merge({ user: User.all.sample, price: rand(50..100) }))
# end
