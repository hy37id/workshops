# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'dariusz@test.pl', firstname: 'Dariusz', lastname: 'Garbarz', admin: true, password: '123456789' )
User.create(email: 'joe@test.pl', firstname: 'Joe', lastname: 'Alloy', admin: false, password: '123456789' )
User.create(email: 'john@test.pl', firstname: 'John', lastname: 'Great', admin: false, password: '123456789' )
User.create(email: 'edward@test.pl', firstname: 'Edward', lastname: 'Getz', admin: false, password: '123456789' )
User.create(email: 'ian@test.pl', firstname: 'Ian', lastname: 'Smith', admin: false, password: '123456789' )


Category.create(name: 'Kategoria 2')
Category.create(name: 'Kategoria 3')
Category.create(name: 'Kategoria 4')
Category.create(name: 'Kategoria 5')
Category.create(name: 'Kategoria 6')
Category.create(name: 'Kategoria 7')
Category.create(name: 'Kategoria 8')
Category.create(name: 'Kategoria 9')