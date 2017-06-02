# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# variables for time usage
now = Time.now
hour = 60*60
day = 24*hour
year = 365*day
tomorrow = now + day

# sports
soccer = Sport.create(name: "Soccer", image: "https://images.unsplash.com/photo-1451256656121-9ffc0c898a49?dpr=2&auto=compress,format&fit=crop&w=376&h=251&q=80&cs=tinysrgb&crop=&bg=")
basketball = Sport.create(name: "Basketball", image: "https://images.unsplash.com/photo-1465516001080-8d478e10a809?dpr=2&auto=compress,format&fit=crop&w=376&h=251&q=80&cs=tinysrgb&crop=&bg=")
football = Sport.create(name: "Football", image: "https://images.unsplash.com/photo-1475171272919-d65b555848d7?dpr=2&auto=format&fit=crop&w=1080&h=720&q=80&cs=tinysrgb&crop=&bg=")
baseball = Sport.create(name: "Baseball", image: "https://images.unsplash.com/photo-1446081946562-2c5d033dc469?dpr=2&auto=compress,format&fit=crop&w=376&h=251&q=80&cs=tinysrgb&crop=&bg=")
tennis = Sport.create(name: "Tennis", image: "https://images.unsplash.com/photo-1485908953667-cf6d88997642?dpr=2&auto=compress,format&fit=crop&w=376&h=261&q=80&cs=tinysrgb&crop=&bg=")
frisbee = Sport.create(name: "Frisbee", image: "https://images.unsplash.com/photo-1492162597297-375fb95047ad?dpr=2&auto=compress,format&fit=crop&w=376&h=282&q=80&cs=tinysrgb&crop=&bg=")
hockey = Sport.create(name: "Hockey", image: "https://images.unsplash.com/photo-1494422000699-4261dcaf4057?dpr=2&auto=compress,format&fit=crop&w=376&h=282&q=80&cs=tinysrgb&crop=&bg=")

# games
soccer1 = Game.create(title: "Soccer Game 1", description: "Meet up and play some soccer", start: tomorrow, end: tomorrow+hour, sport_id: soccer.id)
basketball1 = Game.create(title: "Basketball Game 1", description: "Meet up and play some basketball", start: tomorrow+day, end: tomorrow+day+hour, sport_id: basketball.id)
basketball2 = Game.create(title: "Basketball Game 2", description: "Meet up and play some basketball", start: tomorrow+day+hour, end: tomorrow+day+(2*hour), sport_id: basketball.id)
football1 = Game.create(title: "Football Game 1", description: "Meet up and play some football", start: tomorrow+day, end: tomorrow+day+hour, sport_id: football.id)
football2 = Game.create(title: "Football Game 2", description: "Meet up and play some football", start: tomorrow+(2*day), end: tomorrow+(2*day)+hour, sport_id: football.id)
baseball1 = Game.create(title: "Baseball Game 1", description: "Meet up and play some baseball", start: tomorrow+day, end: tomorrow+day+(2*hour), sport_id: baseball.id)
frisbee1 = Game.create(title: "Frisbee Game 1", description: "Meet up and play some frisbee", start: tomorrow, end: tomorrow+hour, sport_id: frisbee.id)
frisbee2 = Game.create(title: "Frisbee Game 2", description: "Meet up and play some frisbee", start: tomorrow+day, end: tomorrow+day+hour, sport_id: frisbee.id)
frisbee3 = Game.create(title: "Frisbee Game 3", description: "Meet up and play some frisbee", start: tomorrow+(2*day), end: tomorrow+(2*day)+hour, sport_id: frisbee.id)

# players
alex = Player.create(email: "alex@gmail.com", password: "password", name: "Alex", location: "New York, NY", birthday: now-(20*year), phone_number: 5555555, up_points: 0, down_points: 0, skill_level: "Intermediate")
andrew = Player.create(email: "andrew@gmail.com", password: "password", name: "Andrew", location: "New York, NY", birthday: now-(20*year), phone_number: 5555555, up_points: 0, down_points: 0, skill_level: "Intermediate")
kyle = Player.create(email: "kyle@gmail.com", password: "password", name: "Kyle", location: "New York, NY", birthday: now-(20*year), phone_number: 5555555, up_points: 0, down_points: 0, skill_level: "Intermediate")

# player_games
alex.games << [soccer1, basketball1, frisbee1, frisbee2, frisbee3]
andrew.games << [soccer1, basketball1, baseball1, frisbee1, frisbee2]
kyle.games << [basketball2, football1, football2, frisbee1, frisbee2]
