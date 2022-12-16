# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"

puts "cleaning database..."

Bookmark.destroy_all

Movie.destroy_all


List.destroy_all

puts "creating 4 fake movies..."

avatar = Movie.new(
  title: "Avatar",
  overview: "Excellent film",
  rating: 5
)

file = URI.open('https://fr.web.img4.acsta.net/pictures/22/11/02/14/49/4565071.jpg')
avatar.photo.attach(io: file, content_type: 'avatag.jpg', filename: 'avatar/jpg')
avatar.save!
puts "#{avatar.title} has been created ! "


ratatouille = Movie.new(
  title: "Ratatouille",
  overview: "TRès rigolo",
  rating: 4
)
file = URI.open('https://disney-planet.fr/wp-content/uploads/2010/04/remy-personnage-ratatouille-02.jpg')
ratatouille.photo.attach(io: file, content_type: 'ratatouille.jpg', filename: 'ratatouille/jpg')
ratatouille.save!
puts "#{ratatouille.title} has been created ! "

titanic = Movie.new(
  title: "Titanic",
  overview: "TRès triste",
  rating: 3
)
file = URI.open('https://focus.telerama.fr/2022/04/15/38/0/4961/2798/1200/0/60/0/39d8dff_344123775-akg-akg5400604.jpg')
titanic.photo.attach(io: file, content_type: 'titanic.jpg', filename: 'titanic/jpg')
titanic.save!
puts "#{titanic.title} has been created ! "

asterix = Movie.new(
  title: "Asterix",
  overview: "Drole",
  rating: 5
)
file = URI.open('https://fr.web.img6.acsta.net/pictures/22/08/26/16/35/1103895.jpg')
asterix.photo.attach(io: file, content_type: 'obelix.jpg', filename: 'obelix/jpg')
asterix.save!
puts "#{asterix.title} has been created ! "
