# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "open-uri"


# puts "Cleaning database..."
Kart.destroy_all

# puts "Some karts ..."
# standard_kart = { image: "url('app/assets/images/Mario.png')", name: "Standard Kart", price: "20€", special_skills: "drift" }
# city_tripper = { image: "url('app/assets/images/Peach.jpeg')", name: "City tripper", price: "15€", special_skills: "mini turbo, grip water" }
# cat_cruiser = { image: "url('app/assets/images/Donkey_Kong.png')", name: "Cat Cruiser", price: "30€", special_skills: "ground, anti -gravity" }
# the_duke = { image: "url('app/assets/images/Bowser.png')", name: "The Duke", price: "40€", special_skills: "fly, acceleration, speed" }
# yoshi_bike = { image: "url('app/assets/images/YoshiKart.jpeg')", name: "Yoshi Bike", price: "35€", special_skills: "drift, speed, hability" }

# [standard_kart, city_tripper, cat_cruiser, the_duke, yoshi_bike, gold_standard].each do |attributes|
#   kart = Kart.create!(attributes)
#   kart.image
#   kart.name
#   kart.price
#   kart.special_skills
# end
# puts "Finished!"

# Seed through API

# arr = User.all
# user: arr.sample

Kart.create(user: User.first, image: "url('app/assets/images/Mario.png')", name: "Standard Kart", price: "20€", special_skills: "drift" )
Kart.create(user: User.first, image: "url('app/assets/images/Peach.jpeg')", name: "City tripper", price: "15€", special_skills: "mini turbo, grip water" )
Kart.create(user: User.first, image: "url('app/assets/images/Donkey_Kong.png')", name: "Cat Cruiser", price: "30€", special_skills: "ground, anti -gravity")
Kart.create(user: User.first, image: "url('app/assets/images/YoshiKart.jpeg')", name: "Yoshi Bike", price: "35€", special_skills: "drift, speed, hability")
Kart.create(user: User.first, image: "url('app/assets/images/Bowser.png')", name: "The Duke", price: "40€", special_skills: "fly, acceleration, speed")

# response = URI.open('https://mario-kart-tour-api.herokuapp.com/api/v1/karts').read

# JSON.parse(response).first(1).each do |kart|
#   # kart = Kart.new(User: User.all.sample)
#   data = kart.reject { |key, value| !Kart.column_names.include?(key) }
#   Kart.create!(data.merge({ user: User.all.sample, price: rand(50..100) }))
# end
