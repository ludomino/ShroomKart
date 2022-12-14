require "open-uri"
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

user_1 = User.create(photo: "https://mario.wiki.gallery/images/d/d9/MK8_Mario_Icon.png", name: "Mario", email: "mario@mail.com", password: "mario123")
user_2 = User.create(photo: "https://mario.wiki.gallery/images/c/c2/MK8_Peach_Icon.png", name: "Peach", email: "peach@mail.com", password: "peach123")
user_3 = User.create(photo: "https://mario.wiki.gallery/images/0/08/MK8_DKong_Icon.png", name: "Donkey Kong", email: "donkey@mail.com", password: "donkey123")
user_4 = User.create(photo: "https://mario.wiki.gallery/images/9/91/MK8_Yoshi_Icon.png", name: "Yoshi", email: "yoshi@mail.com", password: "yoshi123")
user_5 = User.create(photo: "https://mario.wiki.gallery/images/4/47/MK8_Bowser_Icon.png", name: "bowser", email: "bowser@mail.com", password: "bowser123")

images = [
  "https://mario.wiki.gallery/images/thumb/a/a0/MK8_Mario_Drifting_Standard_Kart_Shadowless_Artwork.png/1600px-MK8_Mario_Drifting_Standard_Kart_Shadowless_Artwork.png",
  "https://mario.wiki.gallery/images/b/bf/Peach_artwork_alt.png",
  "https://mario.wiki.gallery/images/thumb/f/f6/Donkey_Kong_Artwork_-_Mario_Kart_8.png/1200px-Donkey_Kong_Artwork_-_Mario_Kart_8.png",
  "https://mario.wiki.gallery/images/thumb/e/ee/Yoshi_Artwork_%28alt%29_-_Mario_Kart_8.png/1600px-Yoshi_Artwork_%28alt%29_-_Mario_Kart_8.png",
  "https://mario.wiki.gallery/images/thumb/d/d9/Bowser_Artwork_-_Mario_Kart_8.png/1200px-Bowser_Artwork_-_Mario_Kart_8.png"
]

karts = []

karts << Kart.create(user: user_1, name: "Standard Kart", price: "20€", special_skills: "drift")
karts << Kart.create(user: user_2, name: "City tripper", price: "15€", special_skills: "mini turbo, grip water")
karts << Kart.create(user: user_3, name: "Cat Cruiser", price: "30€", special_skills: "ground, anti -gravity")
karts << Kart.create(user: user_4, name: "Yoshi Bike", price: "35€", special_skills: "drift, speed, hability")
karts << Kart.create(user: user_5, name: "The Duke", price: "40€", special_skills: "fly, acceleration, speed")

karts.each_with_index do |kart, index|
  file = URI.open(images[index])
  kart.image.attach(io: file, filename: "kart#{index}.png", content_type: "image/png")
  kart.save
  puts kart
end

# puts "DB created"
# # Seed through API
# # response = URI.open('https://mario-kart-tour-api.herokuapp.com/api/v1/karts').read

# 20.times do
#   booking = Booking.new(user: User.all.sample, kart: Kart.all.sample, start_dates: "2022/08/22", end_dates: "2022/08/27")
#   p booking.valid?
#   booking.save
# end


# file = URI.open("https://mario.wiki.gallery/images/thumb/a/a0/MK8_Mario_Drifting_Standard_Kart_Shadowless_Artwork.png/1600px-MK8_Mario_Drifting_Standard_Kart_Shadowless_Artwork.png")
# kart = Kart.new(user: user_1, name: "Standard Kart", price: "20€", special_skills: "drift")
# kart.image.attach(io: file, filename: "mariokart.png", content_type: "image/png")
# kart.save

# file = URI.open("https://mario.wiki.gallery/images/b/bf/Peach_artwork_alt.png")
# kart1 = Kart.new(user: user_2, name: "City tripper", price: "15€", special_skills: "mini turbo, grip water")
# kart1.image.attach(io: file, filename: "peachkart.png", content_type: "image/png")
# kart1.save

# JSON.parse(response).first(1).each do |kart|
#   # kart = Kart.new(User: User.all.sample)
#   data = kart.reject { |key, value| !Kart.column_names.include?(key) }
#   Kart.create!(data.merge({ user: User.all.sample, price: rand(50..100) }))
# end

# arr = User.all
# user: arr.sample
