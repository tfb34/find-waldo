# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

photograph1 = Photograph.create(title: 'town-square.jpg')
character = photograph1.characters.build(name: "waldo")
character.coordinates.build(col: 430, row: 643)#col:430 row: 587
character.coordinates.build(col: 455, row: 690)#col: 455, row: 635
character.save

character3 = photograph1.characters.build(name: "odlaw")
character3.coordinates.build(col: 593, row: 812)
character3.coordinates.build(col: 612, row: 835)
character3.save

character4 = photograph1.characters.build(name: "wizard")
character4.coordinates.build(col: 667, row: 668)
character4.coordinates.build(col: 680, row: 688)
character4.save



example2 = Photograph.create(title: 'ship.jpg')
