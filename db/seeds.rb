# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'faker'

Comment.destroy_all
Memory.destroy_all
Friendship.destroy_all
Avatar.destroy_all
User.destroy_all

puts "Destroyed comments, memories, avatars, users and friendships"

puts "Creating my/Tommy's profile"

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

puts "Creating yasmin's profile"

yasmin_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601432008/placeholder%20final/yas_jbdoip.png')
yasmin_avatar_object = Avatar.new
yasmin_avatar_object.photo.attach(io: yasmin_avatar, filename: "yasmin_avatar.png", content_type: 'image/png')
yasmin_avatar_object.save

yasmin = User.new(
  username: "yasmin",
  email: "yasmin@email.com",
  password: "123123"
)

yasmin.avatars << yasmin_avatar_object
me.friends << yasmin
allen.friends << yasmin
yasmin.save

puts "Creating mark's profile"

mark_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601432008/placeholder%20final/mark_s7my7h.png')
mark_avatar_object = Avatar.new
mark_avatar_object.photo.attach(io: mark_avatar, filename: "mark_avatar.png", content_type: 'image/png')
mark_avatar_object.save

mark = User.new(
  username: "mark",
  email: "mark@email.com",
  password: "123123"
)

mark.avatars << mark_avatar_object
me.friends << mark
allen.friends << yasmin
mark.save

puts "Creating jade's profile"

jade_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601475791/placeholder%20final/jade_fwadek.png')
jade_avatar_object = Avatar.new
jade_avatar_object.photo.attach(io: jade_avatar, filename: "jade_avatar.png", content_type: 'image/png')
jade_avatar_object.save

jade = User.new(
  username: "jade",
  email: "jade@email.com",
  password: "123123"
)

jade.avatars << jade_avatar_object
me.friends << jade
allen.friends << yasmin
jade.save

puts "Creating florence's profile"

florence_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601432008/placeholder%20final/flo_e64vbj.png')
florence_avatar_object = Avatar.new
florence_avatar_object.photo.attach(io: florence_avatar, filename: "florence_avatar.png", content_type: 'image/png')
florence_avatar_object.save

florence = User.new(
  username: "florence",
  email: "florence@email.com",
  password: "123123"
)

florence.avatars << florence_avatar_object
me.friends << florence
allen.friends << florence
florence.save

puts "Creating zaid's profile"

zaid_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601432007/placeholder%20final/zaid_ouzmtt.png')
zaid_avatar_object = Avatar.new
zaid_avatar_object.photo.attach(io: zaid_avatar, filename: "zaid_avatar.png", content_type: 'image/png')
zaid_avatar_object.save

zaid = User.new(
  username: "zaid",
  email: "zaid@email.com",
  password: "123123"
)

zaid.avatars << zaid_avatar_object
me.friends << zaid
allen.friends << zaid
zaid.save

puts "Creating huiling's profile"

huiling_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601451547/placeholder%20final/huiling_orwory.png')
huiling_avatar_object = Avatar.new
huiling_avatar_object.photo.attach(io: huiling_avatar, filename: "huiling_avatar.png", content_type: 'image/png')
huiling_avatar_object.save

huiling = User.new(
  username: "huiling",
  email: "huiling@email.com",
  password: "123123"
)

huiling.avatars << huiling_avatar_object
me.friends << huiling
allen.friends << huiling
huiling.save

puts "Creating prima's profile"

prima_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601432006/placeholder%20final/prima_cja62i.png')
prima_avatar_object = Avatar.new
prima_avatar_object.photo.attach(io: prima_avatar, filename: "prima_avatar.png", content_type: 'image/png')
prima_avatar_object.save

prima = User.new(
  username: "prima",
  email: "prima@email.com",
  password: "123123"
)

prima.avatars << prima_avatar_object
me.friends << prima
allen.friends << prima
prima.save

puts "Creating daphne's profile"

daphne_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601428321/placeholder%20final/Daphne_1_ylgetz.png')
daphne_avatar_object = Avatar.new
daphne_avatar_object.photo.attach(io: daphne_avatar, filename: "daphne_avatar.png", content_type: 'image/png')
daphne_avatar_object.save

daphne = User.new(
  username: "daphne",
  email: "daphne@email.com",
  password: "123123"
)

daphne.avatars << daphne_avatar_object
me.friends << daphne
allen.friends << daphne
daphne.save

puts "Creating ailin's profile"

ailin_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601428141/placeholder%20final/Ai_bqxhuw.png')
ailin_avatar_object = Avatar.new
ailin_avatar_object.photo.attach(io: ailin_avatar, filename: "ailin_avatar.png", content_type: 'image/png')
ailin_avatar_object.save

ailin = User.new(
  username: "ailin",
  email: "ailin@email.com",
  password: "123123"
)

ailin.avatars << ailin_avatar_object
me.friends << ailin
allen.friends << ailin
ailin.save

puts "Creating jiawen's profile"

jiawen_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601428056/placeholder%20final/Jiawen_pj4bjy.png')
jiawen_avatar_object = Avatar.new
jiawen_avatar_object.photo.attach(io: jiawen_avatar, filename: "jiawen_avatar.png", content_type: 'image/png')
jiawen_avatar_object.save

jiawen = User.new(
  username: "jiawen",
  email: "jiawen@email.com",
  password: "123123"
)

jiawen.avatars << jiawen_avatar_object
me.friends << jiawen
allen.friends << jiawen
jiawen.save

puts "Creating joel's profile"

joel_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601435088/placeholder%20final/joel_cm8pwc.png')
joel_avatar_object = Avatar.new
joel_avatar_object.photo.attach(io: joel_avatar, filename: "joel_avatar.png", content_type: 'image/png')
joel_avatar_object.save

joel = User.new(
  username: "joel",
  email: "joel@email.com",
  password: "123123"
)

joel.avatars << joel_avatar_object
me.friends << joel
allen.friends << joel
joel.save

puts "Creating miguel's profile"

miguel_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601435088/placeholder%20final/miguel_zqstau.png')
miguel_avatar_object = Avatar.new
miguel_avatar_object.photo.attach(io: miguel_avatar, filename: "miguel_avatar.png", content_type: 'image/png')
miguel_avatar_object.save

miguel = User.new(
  username: "miguel",
  email: "miguel@email.com",
  password: "123123"
)

miguel.avatars << miguel_avatar_object
me.friends << miguel
allen.friends << miguel
miguel.save

puts "Creating aaron's profile"

aaron_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601435292/placeholder%20final/aaron_udoaje.png')
aaron_avatar_object = Avatar.new
aaron_avatar_object.photo.attach(io: aaron_avatar, filename: "aaron_avatar.png", content_type: 'image/png')
aaron_avatar_object.save

aaron = User.new(
  username: "aaron",
  email: "aaron@email.com",
  password: "123123"
)

aaron.avatars << aaron_avatar_object
me.friends << aaron
allen.friends << aaron
aaron.save


# Other avatars

puts "Creating zoella's profile"

zoella_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601208262/placeholder%20final/de1e1aafee46718726101e3e046ac915-removebg-preview_uc6bpf.png')
zoella_avatar_object = Avatar.new
zoella_avatar_object.photo.attach(io: zoella_avatar, filename: "zoella_avatar.png", content_type: 'image/png')
zoella_avatar_object.save

zoella = User.new(
  username: "zoella",
  email: "zoella@email.com",
  password: "123123"
)

zoella.avatars << zoella_avatar_object
me.friends << zoella
allen.friends << zoella
zoella.save

puts "Creating zoe's profile"

zoe_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207906/placeholder%20final/cfd0b98ce81775cf4ea08af31c7371ba-removebg-preview_1_hjhusu.png')
zoe_avatar_object = Avatar.new
zoe_avatar_object.photo.attach(io: zoe_avatar, filename: "zoe_avatar.png", content_type: 'image/png')
zoe_avatar_object.save

zoe = User.new(
  username: "zoe",
  email: "zoe@email.com",
  password: "123123"
)

zoe.avatars << zoe_avatar_object
me.friends << zoe
allen.friends << zoe
zoe.save

puts "Creating zena's profile"

zena_avatar = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601207906/placeholder%20final/d57c3987f95b33225269b4a948eee2b0-removebg-preview_1_rvbfar.png')
zena_avatar_object = Avatar.new
zena_avatar_object.photo.attach(io: zena_avatar, filename: "zena_avatar.png", content_type: 'image/png')
zena_avatar_object.save

zena = User.new(
  username: "zena",
  email: "zena@email.com",
  password: "123123"
)

zena.avatars << zena_avatar_object
me.friends << zena
allen.friends << zena
zena.save

puts "Creating memories"

puts "Memory 1"
memory_1_object = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601433763/placeholder%20final/seed/29AC732C-562F-4D8C-9DDA-00DCE0DE76E2_gmb9j2_ednwjd.jpg')
memory_1 = Memory.new
memory_1.user = zena
memory_1.photo.attach(io: memory_1_object, filename: "memory_1.png", content_type: 'image/png')
memory_1.avatars << zoella.avatars.first
memory_1.save

puts "Memory 2"
memory_2_object = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601433762/placeholder%20final/seed/192800BD-B50D-453E-9196-996D5EA4A582_lfzqxd_toemzz.jpg')
memory_2 = Memory.new
memory_2.user = zena
memory_2.photo.attach(io: memory_2_object, filename: "memory_2.png", content_type: 'image/png')
memory_2.avatars << zoe.avatars.first
memory_2.save

puts "Memory 3"
memory_3_object = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601433762/placeholder%20final/seed/F14544BD-03FB-466B-BD86-574CE2F24CD6_yo9qkg_dxoib0.jpg')
memory_3 = Memory.new
memory_3.user = zoe
memory_3.photo.attach(io: memory_3_object, filename: "memory_3.png", content_type: 'image/png')
memory_3.avatars << zena.avatars.first
memory_3.save

puts "Festival"
festival_object = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601431900/placeholder%20final/seed/music_fest_wjqrgo.png')
festival = Memory.new
festival.user = me
festival.photo.attach(io: festival_object, filename: "festival.png", content_type: 'image/png')
festival.avatars << ailin.avatars.first
festival.avatars << daphne.avatars.first
festival.save

puts "Forest"
forest_object = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601430347/placeholder%20final/seed/ailin_forest_ovxxcy.png')
forest = Memory.new
forest.user = me
forest.photo.attach(io: forest_object, filename: "forest.png", content_type: 'image/png')
forest.avatars << ailin.avatars.first
forest.save

puts "Brookyn"
brooklyn_object = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601431886/placeholder%20final/seed/allen_yas_ueabd1.png')
brooklyn = Memory.new
brooklyn.photo.attach(io: brooklyn_object, filename: "brooklyn.png", content_type: 'image/png')
brooklyn.user = me
brooklyn.avatars << yasmin.avatars.first
brooklyn.avatars << allen.avatars.first
brooklyn.save

puts "Iceland"
iceland_object = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601428825/placeholder%20final/seed/iceland_q9ulht.png')
iceland = Memory.new
iceland.user = me
iceland.photo.attach(io: iceland_object, filename: "iceland.png", content_type: 'image/png')
iceland.avatars << yasmin.avatars.first
iceland.avatars << daphne.avatars.first
iceland.avatars << jiawen.avatars.first
iceland.save

puts "Beach"
beach_object = URI.open('https://res.cloudinary.com/dc2qpvp8c/image/upload/v1601475800/placeholder%20final/seed/beach_1_dzmsnw.png')
beach = Memory.new
beach.user = me
beach.photo.attach(io: beach_object, filename: "beach.png", content_type: 'image/png')
beach.avatars << miguel.avatars.first
beach.avatars << jiawen.avatars.first
beach.avatars << joel.avatars.first
beach.avatars << daphne.avatars.first
beach.avatars << florence.avatars.first
beach.avatars << allen.avatars.first
beach.avatars << yasmin.avatars.first
beach.avatars << mark.avatars.first
beach.avatars << zaid.avatars.first
beach.avatars << prima.avatars.first
beach.avatars << ailin.avatars.first
beach.avatars << aaron.avatars.first
beach.save
