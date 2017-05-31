# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

soccer = Sport.create(name: "Soccer")
basketball = Sport.create(name: "Basketball")

s = Game.create(title: "Soccer Game", description: "Playing soccer at the park", start: Time.now, end: Time.now+(60*60*2), sport_id: soccer.id)
b = Game.create(title: "Basketball Game", description: "Playing basketball at the park", start: Time.now+(60*60*48), end: Time.now+(60*60*50), sport_id: basketball.id)

alex = Player.create(email: "alex@gmail.com", password: "password")
andrew = Player.create(email: "andrew@gmail.com", password: "password")
kyle = Player.create(email: "kyle@gmail.com", password: "password")


alex.games << s
alex.games << b

andrew.games << s
andrew.games << b

kyle.games << s
kyle.games << b
