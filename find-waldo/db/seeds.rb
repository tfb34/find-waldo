# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

example = Photograph.create(title: 'town-square.jpg')
character = example.characters.build(name: "waldo")
character.coordinates.build(row: 430, col: 587)
character.coordinates.build(row: 455, col: 635)
character.save

example2 = Photograph.create(title: 'ship.jpg')
