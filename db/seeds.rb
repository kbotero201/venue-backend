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
jason = User.create(name: "Jason", favorite: "Rock", password: "123")

msg = Venue.create(name: "Madison Square Garden", location: "manhattan", description: "The World's Most Famous Arena", image: "../images/msg.jpg") 
flatiron = Venue.create(name: "Flatiron Campus", location: "manhattan", description: "The Best Bootcamp", image: "../images/flatiron.jpeg") 
bkySteel = Venue.create(name: "Brooklyn Steel", location: "East Williamsburg", description: "'Best medium size venue imo' - Jason", image: "../images/bkynSteel.jpg")
kf = Venue.create(name: "Knitting Factory", location: "Williamsburg", description: "An outpost of a small national concert venue chain with an attached adults-only restaurant.", image: "..images/kf.jpg" )
# bc = Venue.create(name: "Barclays Center", location: "Prospect Heights", description: "Brooklyn Nets Plays Here", image: "..image/")

yeezy = Event.create(event_name: "Yeezy is Back", performer_name: "Kanye West", event_type: "Hip-Hop", description: "Who knows...", image: "../images/kanyewest.jpg", venue_id: msg.id)
postponed = Event.create(event_name: "Where do we Go?", performer_name: "Billie Eilish", event_type: "Pop", description: "Appreantly this was postponed", image: "../images/billie.jpg", venue_id: msg.id)

themidnight = Event.create(event_name: "Endless Summer", performer_name: "The Midnight", event_type: "Rock", 
                        description: "The Midnight is a synthwave band composed of Atlanta-based singer-songwriter Jamison Tyler Lyle and Los Angeles-based Danish-born producer, songwriter, and singer Tim Daniel McEwan.",
                         image: "../images/themidnight.jpg", venue_id: bkySteel.id)

danceWithDead = Event.create(event_name: "Loved to Death", performer_name: "Dance with the Dead", event_type: "Rock", 
                        description: "Dance With The Dead, is a duo formed by Justin and Tony. They previously played in different metal bands. That metal background is very apparent in their music, which is a vibrant blend of metal and synths inspired by 80's John Carpenter horror.", 
                        image: "../images/dwtd.jpg", venue_id: kf.id)

kkb = Event.create(event_name: "StereoGum", performer_name: "Kero Kero Bonito", event_type: "Synth-Pop", 
                description: "Kero Kero Bonito are a British indie pop band from London. The band consists of vocalist Sarah Midori Perry and producers and multi-instrumentalists Gus Lobban and Jamie Bulled. Their name's meaning is intentionally ambiguous, with one derivation from the Japanese onomatopoeic words for frog croaks and a type of fish.", 
                image: "../images/kkb.jpg", venue_id: bkySteel.id)


studentTeacherShowdown = Event.create(event_name: "Flatiron Brawl 2021", performer_name: "Lazzzer Ian", event_type: "Party", description: "Ian fists are rated E for Everyone", image: "../images/Ian1.png", venue_id: flatiron.id)

# themidnight = Event.create()


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