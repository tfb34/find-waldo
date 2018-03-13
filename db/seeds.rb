# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#having a ball
photograph1 = Photograph.create(title: 'https://i.imgur.com/xNc96vu.jpg')
character = photograph1.characters.build(name: "waldo")
character.coordinates.build(col: 59, row: 636)#col:430 row: 587
character.coordinates.build(col: 91, row: 701)#col: 455, row: 635
character.save

character2 = photograph1.characters.build(name: "odlaw")
character2.coordinates.build(col: 0, row: 69)
character2.coordinates.build(col: 18, row: 118)
character2.save

#town-square
photograph2 = Photograph.create(title: 'https://i.imgur.com/2v0wuUB.png')
character = photograph2.characters.build(name: "waldo")
character.coordinates.build(col: 234, row: 524)#col:430 row: 587
character.coordinates.build(col: 257, row: 575)#col: 455, row: 635
character.save

character2 = photograph2.characters.build(name: "odlaw")
character2.coordinates.build(col: 457, row: 709)
character2.coordinates.build(col: 469, row: 735)
character2.save

character3 = photograph2.characters.build(name: "wizard")
character3.coordinates.build(col: 548, row: 552)
character3.coordinates.build(col: 563, row: 570)
character3.save

#on-tour-with-vikings
photograph3 = Photograph.create(title: 'https://i.imgur.com/aXiugsW.jpg')
character = photograph3.characters.build(name: "waldo")
character.coordinates.build(col: 864, row: 384)#col:430 row: 587
character.coordinates.build(col: 882, row: 404)#col: 455, row: 635
character.save

#beach
photograph4 = Photograph.create(title: 'https://i.imgur.com/fC9R3ZL.jpg')
character = photograph4.characters.build(name: "waldo")
character.coordinates.build(col: 527, row: 384)#col:430 row: 587
character.coordinates.build(col: 551, row: 419)#col: 455, row: 635
character.save
character2 = photograph4.characters.build(name: "odlaw")
character2.coordinates.build(col: 240, row: 388)#col:430 row: 587
character2.coordinates.build(col: 255, row: 416)#col: 455, row: 635
character2.save
character3 = photograph4.characters.build(name: "wizard")
character3.coordinates.build(col: 633, row: 384)#col:430 row: 587
character3.coordinates.build(col: 655, row: 430)#col: 455, row: 635
character3.save

#art-gallery
photograph5 = Photograph.create(title: 'https://i.imgur.com/BkadOwE.jpg')
character = photograph5.characters.build(name: "waldo")
character.coordinates.build(col: 852, row: 245)
character.coordinates.build(col: 868, row: 281)
character.save
character2 = photograph5.characters.build(name: "odlaw")
character2.coordinates.build(col: 199, row: 406)
character2.coordinates.build(col: 219, row: 427)
character2.save

#sea-carnival
photograph6 = Photograph.create(title: 'https://i.imgur.com/DDsezBx.jpg')
character = photograph6.characters.build(name: "waldo")
character.coordinates.build(col: 814, row: 113)
character.coordinates.build(col: 828, row: 133)
character.save
character2 = photograph6.characters.build(name: "odlaw")
character2.coordinates.build(col: 44, row: 577)
character2.coordinates.build(col: 58, row: 611)
character2.save

#ship
photograph7 = Photograph.create(title: 'https://i.imgur.com/pK2B78e.jpg')
character = photograph7.characters.build(name: "waldo")
character.coordinates.build(col: 65, row: 443)
character.coordinates.build(col: 81, row: 468)
character.save

#marching-bands
photograph8 = Photograph.create(title: 'https://i.imgur.com/wN7yHjI.jpg')
character = photograph8.characters.build(name: "waldo")
character.coordinates.build(col: 861, row: 255)
character.coordinates.build(col: 876, row: 282)
character.save

#factory
photograph9 = Photograph.create(title: 'https://i.imgur.com/lkR8KFY.jpg')
character = photograph9.characters.build(name: "waldo")
character.coordinates.build(col: 503, row: 187)
character.coordinates.build(col: 514, row: 216)
character.save
character2 = photograph9.characters.build(name: "odlaw")
character2.coordinates.build(col: 228, row: 526)
character2.coordinates.build(col: 240, row: 548)
character2.save
character3 = photograph9.characters.build(name: "wenda")
character3.coordinates.build(col: 508, row: 672)
character3.coordinates.build(col: 523, row: 703)
character3.save

#fishing
photograph10 = Photograph.create(title: 'https://i.imgur.com/XxQvJio.jpg')
character = photograph10.characters.build(name: "waldo")
character.coordinates.build(col: 482, row: 201)
character.coordinates.build(col: 494, row: 221)
character.save
character2 = photograph10.characters.build(name: "wizard")
character2.coordinates.build(col: 706, row: 168)
character2.coordinates.build(col: 714, row: 199)
character2.save
character3 = photograph10.characters.build(name: "wenda")
character3.coordinates.build(col: 224, row: 280)
character3.coordinates.build(col: 237, row: 301)
character3.save

#garden
photograph11 = Photograph.create(title: 'https://i.imgur.com/W0erNuw.jpg')
character = photograph11.characters.build(name: "waldo")
character.coordinates.build(col: 271, row: 559)
character.coordinates.build(col: 285, row: 594)
character.save
character2 = photograph11.characters.build(name: "wizard")
character2.coordinates.build(col: 312, row: 484)
character2.coordinates.build(col: 322, row: 509)
character2.save
character3 = photograph11.characters.build(name: "wenda")
character3.coordinates.build(col: 924, row: 360)
character3.coordinates.build(col: 932, row: 377)
character3.save
character4 = photograph11.characters.build(name: "odlaw")
character4.coordinates.build(col: 547, row: 572)
character4.coordinates.build(col: 556, row: 590)
character4.save

#crowded-area
photograph12 = Photograph.create(title: 'https://i.imgur.com/8yzkICZ.png')
character = photograph12.characters.build(name: "waldo")
character.coordinates.build(col: 960, row: 442)
character.coordinates.build(col: 970, row: 465)
character.save
character3 = photograph12.characters.build(name: "wenda")
character3.coordinates.build(col: 300, row: 562)
character3.coordinates.build(col: 310, row: 582)
character3.save
character4 = photograph12.characters.build(name: "odlaw")
character4.coordinates.build(col: 196, row: 558)
character4.coordinates.build(col: 207, row: 587)
character4.save