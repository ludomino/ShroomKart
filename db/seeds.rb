# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# require "open-uri"

puts "Cleaning database..."
Booking.destroy_all
Kart.destroy_all
User.destroy_all

# arr = User.all
# user: arr.sample
user_1 = User.create(name: "Mario", email: "mario@mail.com", password: "mario123")
user_2 = User.create(name: "Peach", email: "peach@mail.com", password: "peach123")
user_3 = User.create(name: "Donkey Kong", email: "donkey@mail.com", password: "donkey123")
user_4 = User.create(name: "Yoshi", email: "yoshi@mail.com", password: "yoshi123")
user_5 = User.create(name: "bowser", email: "bowser@mail.com", password: "bowser123")

Kart.create(user: user_1, image: "https://mario.wiki.gallery/images/thumb/a/a0/MK8_Mario_Drifting_Standard_Kart_Shadowless_Artwork.png/1600px-MK8_Mario_Drifting_Standard_Kart_Shadowless_Artwork.png", name: "Standard Kart", price: "20€", special_skills: "drift" )
Kart.create(user: user_2, image: "https://mario.wiki.gallery/images/b/bf/Peach_artwork_alt.png", name: "City tripper", price: "15€", special_skills: "mini turbo, grip water" )
Kart.create(user: user_3, image: "https://mario.wiki.gallery/images/thumb/f/f6/Donkey_Kong_Artwork_-_Mario_Kart_8.png/1200px-Donkey_Kong_Artwork_-_Mario_Kart_8.png", name: "Cat Cruiser", price: "30€", special_skills: "ground, anti -gravity")
Kart.create(user: user_4, image: "https://mario.wiki.gallery/images/thumb/e/ee/Yoshi_Artwork_%28alt%29_-_Mario_Kart_8.png/1600px-Yoshi_Artwork_%28alt%29_-_Mario_Kart_8.png", name: "Yoshi Bike", price: "35€", special_skills: "drift, speed, hability")
Kart.create(user: user_5, image: "https://mario.wiki.gallery/images/thumb/d/d9/Bowser_Artwork_-_Mario_Kart_8.png/1200px-Bowser_Artwork_-_Mario_Kart_8.png", name: "The Duke", price: "40€", special_skills: "fly, acceleration, speed")

puts "DB created"
# Seed through API
# response = URI.open('https://mario-kart-tour-api.herokuapp.com/api/v1/karts').read

20.times do
  booking = Booking.new(user: User.all.sample, kart: Kart.all.sample, start_dates: "2022/08/22", end_dates: "2022/08/27")
  p booking.valid?
  booking.save
end
# JSON.parse(response).first(1).each do |kart|
#   # kart = Kart.new(User: User.all.sample)
#   data = kart.reject { |key, value| !Kart.column_names.include?(key) }
#   Kart.create!(data.merge({ user: User.all.sample, price: rand(50..100) }))
# end
