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


kevin = User.create(name: "Kevin", favorite: "PlaceHolder")
jason = User.create(name: "Jason", favorite: "PlaceHolder")

msg = Venue.create(name: "Madison Square Garden", location: "manhattan", description: "The World's Most Famous Arena", image: imgPlaceHolder) 

yeezy = Event.create(event_name: "Yeezy is Back", performer_name: "Kanye West", description: "Who knows...", image: imgPlaceHolder, venue_id: msg.id)
postponed = Event.create(event_name: "Where do we Go?", performer_name: "Billie Eilish", description: "Appreantly this was postponed", image: imgPlaceHolder, venue_id: msg.id)


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