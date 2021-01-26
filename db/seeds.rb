# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#TESTING
Event.destroy_all 
Ticket.destroy_all
User.destroy_all
Venue.destroy_all

imgPlaceHolder = "https://via.placeholder.com/150"



kevin = User.create(name: "Kevin", favorite: "Concerts", password: "123")
jason = User.create(name: "Jason", favorite: "Concerts", password: "123")

msg = Venue.create(name: "Madison Square Garden", location: "manhattan", description: "The World's Most Famous Arena", image: "../images/msg.jpg") 
flatiron = Venue.create(name: "Flatiron Campus", location: "manhattan", description: "The Best Bootcamp", image: "../images/flatiron.jpeg") 


yeezy = Event.create(event_name: "Yeezy is Back", performer_name: "Kanye West", event_type: "Concert", description: "Who knows...", image: "../images/kanyewest.jpg", venue_id: msg.id)
postponed = Event.create(event_name: "Where do we Go?", performer_name: "Billie Eilish", event_type: "Concert", description: "Appreantly this was postponed", image: "../images/billie.jpg", venue_id: msg.id)
studentTeacherShowdown = Event.create(event_name: "Flatiron Brawl 2021", performer_name: "Lazzzer Ian", event_type: "Party", description: "Ian fists are rated E for Everyone", image: "../images/Ian1.png", venue_id: flatiron.id)



ticket1 = Ticket.create(user_id: kevin.id, event_id: yeezy.id)


#tickkets
# t.integer "user_id"
# t.integer "event_id"

# events
# t.string "event_name"
# t.string "performer_name"
# t.string "description"
# t.string "image"

# 
# t.string "name"
# t.string "location"
# t.string "description"
# t.string "image"