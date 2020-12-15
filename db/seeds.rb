# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Genre.destroy_all
Artist.destroy_all
Song.destroy_all

Genre.create(name: "Latin")
Genre.create(name: "Cool Music")
Artist.create(name: "The One", bio: "I'm so cool.")
Artist.create(name: "U2", bio: "very much red")
Artist.create(name: "Selena", bio: "Muy picante")
Song.create(name: "Ladida", artist_id: 1, genre_id: 1)

puts "it happened"