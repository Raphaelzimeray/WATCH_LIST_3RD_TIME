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

puts "#{avatar.title} has been created ! "
ratatouille = Movie.new(
  title: "Ratatouille",
  overview: "TRès rigolo",
  rating: 4
)

puts "#{ratatouille.title} has been created ! "

titanic = Movie.new(
  title: "Titanic",
  overview: "TRès triste",
  rating: 3
)

puts "#{titanic.title} has been created ! "

asterix = Movie.new(
  title: "Asterix",
  overview: "Drole",
  rating: 5
)

puts "#{asterix.title} has been created ! "

