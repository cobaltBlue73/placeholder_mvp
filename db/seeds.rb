# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'faker'

Friendship.destroy_all
Avatar.destroy_all
User.destroy_all

puts "Destroyed avatars, users and friendships"

puts "Creating my profile"

my_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1600749758/Placeholder/photo-girl-ankle.png')
my_avatar_object = Avatar.new
my_avatar_object.photo.attach(io: my_avatar, filename: "my_avatar.png", content_type: 'image/png')
my_avatar_object.save

me = User.new(
  username: "yongtaufoo",
  email: "ytf@email.com",
  password: "123123"
)

me.avatars << my_avatar_object
me.save


puts "Creating my friends"

puts "Starting seed file"
files = []
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1600847144/Placeholder/girl-dog_1_bcnsoc.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1600748966/Placeholder/photo-guy-jacket.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1600748819/Placeholder/photo-girl-squatting.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1600748768/Placeholder/photo-girl-beach.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1600748710/Placeholder/photo-guy-stylish.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1600748642/Placeholder/photo-girl-posing.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1600748466/Placeholder/photo-girl-elbow-pose.png'

puts "Starting for loop"

files.length.times do |index|

  puts "Starting avatar #{index}"

  avatar_object = Avatar.new
  avatar_object.photo.attach(io: URI.open(files[index]), filename: "file#{index}.png", content_type: 'image/png')
  avatar_object.save
  puts "Avatar #{index} saved"

  avatar_object.photo.attached?

  user = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: '123123'
  )
  user.avatars << avatar_object
  me.friends << user
  user.save

  puts "User #{index} saved"
end


















