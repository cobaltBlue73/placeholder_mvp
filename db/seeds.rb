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

my_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207907/placeholder%20final/guy_jacket_phuxmj.png')
my_avatar_object = Avatar.new
my_avatar_object.photo.attach(io: my_avatar, filename: "my_avatar.png", content_type: 'image/png')
my_avatar_object.save

me = User.new(
  username: "tommy",
  email: "tommy@email.com",
  password: "123123"
)

me.avatars << my_avatar_object
me.save

puts "Creating Allen's profile"

allen_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207908/placeholder%20final/allen_puiz3c.png')
allen_avatar_object = Avatar.new
allen_avatar_object.photo.attach(io: allen_avatar, filename: "allen_avatar.png", content_type: 'image/png')
allen_avatar_object.save

allen = User.new(
  username: "allen",
  email: "allen@email.com",
  password: "123123"
)

allen.avatars << allen_avatar_object
me.friends << allen
allen.save

puts "Creating all other friends"

puts "Starting seed file"
files = []
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207906/placeholder%20final/girl_elbow_1_un8liu.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207907/placeholder%20final/girl-dog_1_1_laffub.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207906/placeholder%20final/cfd0b98ce81775cf4ea08af31c7371ba-removebg-preview_1_hjhusu.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207906/placeholder%20final/girl_beach_1_mleey7.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207906/placeholder%20final/d57c3987f95b33225269b4a948eee2b0-removebg-preview_1_rvbfar.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207906/placeholder%20final/girl_pose_1_vj7ekt.png'
files << 'https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601208262/placeholder%20final/de1e1aafee46718726101e3e046ac915-removebg-preview_uc6bpf.png'

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
  allen.friends << user
  user.save

  puts "User #{index} saved"
end
