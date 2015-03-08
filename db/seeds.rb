# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create(email: 'darius@test.pl', firstname: 'Dariusz', lastname: 'Grecky', admin: true, password: '123456789' )
joe = User.create(email: 'joe@test.pl', firstname: 'Joe', lastname: 'Davies',  password: '123456789' )
john = User.create(email: 'john@test.pl', firstname: 'John', lastname: 'Coltrane',password: '123456789' )
User.create(email: 'edward@test.pl', firstname: 'Edward', lastname: 'Getz',  password: '123456789' )
ian = User.create(email: 'ian@test.pl', firstname: 'Ian', lastname: 'Smith', password: '123456789' )
ken = User.create(email: 'ken@test.pl', firstname: 'Ken', lastname: 'Amstrong', password: '123456789' )


books = Category.create(name: 'Books')
movies = Category.create(name: 'Movies')
laptops = Category.create(name: 'Laptops')

mm = Product.create(title: 'Mr. Mercedes', description: 'In the frigid pre-dawn hours, in a distressed Midwestern city, hundreds of desperate unemployed folks are lined up for a spot at a job fair. Without warning, a lone driver plows through the crowd in a stolen Mercedes, running over the innocent, backing up, and charging again. Eight people are killed; fifteen are wounded. The killer escapes.', price: 12.50, user: admin, category: books)

lop = Product.create(title: 'Life of Pi', description: 'Life of Pi is a fantasy adventure novel by Yann Martel published in 2001. The protagonist, Piscine Molitor "Pi" Patel, a Tamil boy from Pondicherry, explores issues of spirituality and practicality from an early age. He survives 227 days after a shipwreck while stranded on a boat in the Pacific Ocean with a Bengal tiger named Richard Parker.', price: 12.50, user: admin, category: books)

b = Product.create(title: 'Boneshaker', description: 'In the early days of the Civil War, rumors of gold in the frozen Klondike brought hordes of newcomers to the Pacific Northwest. Anxious to compete, Russian prospectors commissioned inventor Leviticus Blue to create a great machine that could mine through Alaska’s ice. Thus was Dr. Blue’s Incredible Bone-Shaking Drill Engine born.', price: 12.50, user: admin, category: books)


Review.create(content: 'Stephen King does it again! What do I mean by that? Let me tell you. The reason I love Mr. King is because of his characters. I believe that his characterizations are what makes his books so special and popular. This book is no exception.
', rating: 5, product: mm, user: joe)


Review.create(content: 'Dazzling inventions, air pirates, evil bad guys, underground vaults, goggles, daring rescues, gold, Blight gas, a one-armed bartender, a princess, zombies. Oh, what fun!
The setting was vividly described and rich in details. The main characters were well developed and fascinating. Briar Wilkes, widow of Leviticus Blue, eccentric inventor, searches for her teenage son, Zeke, in a walled-off section of Seattle, where a dangerous yellow gas shrouds the city, forcing the remaining inhabitants to live underground. Lots of action, suspense, and vibrant, quirky characters helped move the story along at a brisk pace.
I thoroughly enjoyed the twists, surprises, and very satisfying ending of this riveting adventure story. ', rating: 5, product: b, user: admin)

Review.create(content: 'Is there anything a mother wouldn’t do to save her son? Even if they are mostly estranged and angry at each other? Would she willingly walk into a place where the air is poisonous and hundreds of zombies roam about?
', rating:5, product: b, user: joe)

Review.create(content: 'Cherie (disclosure: she\'s a good friend, and I read the ARC of Boneshaker) has crafted a beautiful and believable world, and filled it with characters who never once rang false to me. The characters, the dialog, and the descriptive prose all come together to create a wonderful novel that is is easy to read and hard to put down.', rating:4, product: b, user: john)

Review.create(content: 'No longer a vital city, Seattle is now completely walled off to contain a poisonous gas that now seeps from the city\'s underground areas after a man-made disaster caused havoc to the city center. The gas, called Blight, killed thousands of Seattle\'s inhabitants then caused them to be resurrected as flesh-craving zombies. A giant wall was erected to contain both the zombies and the gas.', rating:5, product: b, user: ian)