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


kevin = User.create(name: "Kevin", favorite: "Hip-Hop", password: "123")
jason = User.create(name: "Jason", favorite: "Rock", password: "123")

msg = Venue.create(name: "Madison Square Garden", location: "manhattan", description: "The World's Most Famous Arena", image: "../images/msg.jpg") 
flatiron = Venue.create(name: "Flatiron Campus", location: "manhattan", description: "The Best Bootcamp", image: "../images/flatiron.jpeg") 
bkySteel = Venue.create(name: "Brooklyn Steel", location: "East Williamsburg", description: "'Best medium size venue imo' - Jason", image: "../images/bkynSteel.jpg")
kf = Venue.create(name: "Knitting Factory", location: "Williamsburg", description: "An outpost of a small national concert venue chain with an attached adults-only restaurant.", image: "../images/kf.jpg" )
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

uzi = Event.create(event_name: "Luv Is Raging", performer_name: "Lil Uzi Vert", event_type: "Hip-Hop", 
    description: "Luv Is Rage 2 is the debut studio album by American rapper Lil Uzi Vert. It was released on August 25, 2017, through Generation Now and distributed by Atlantic Records. The album serves as a sequel to Uzi's commercial debut mixtape Luv Is Rage.", 
    image: "../images/uzi.png", venue_id: msg.id
)
pump = Event.create(event_name: "Gonna Lose Some Braincells", performer_name: "Lil Pump", event_type: "Hip-Hop", 
    description: 'Lil Pump rose to popularity in 2017 with the single "Gucci Gang", which peaked at number 3 on the Billboard Hot 100 and was certified five-times platinum by the Recording Industry Association of America. The single was featured on his debut album Lil Pump (2017), which peaked at number 3 on the US Billboard 200. He has since released the singles "I Love It" (with Kanye West), "Esskeetit", "Drug Addicts", "Butterfly Doors", "Racks on Racks", "Be Like Me" (featuring Lil Wayne), and "Welcome to the Party" from the Deadpool 2 soundtrack.', 
    image: "../images/pump.png", venue_id: msg.id
)

deadmau = Event.create(event_name: "The Cube", performer_name: "Deadmau5", event_type: "EDM", 
    description: "Im pretty sure my friend was trying to scalp tickects to this event about a year ago but couldn't sell all of them so he took me and his brother. Anyway he messaged me last minute and I went with him, I couldn't believe deadmau5 was still touring.", 
    image: "../images/deadmau.jpg", venue_id: bkySteel.id
)

purityRing = Event.create(event_name: "Tour de Womb", performer_name: "Purity Ring", event_type: "Synth-Pop", 
    description: "Purity Ring is a Canadian electronic pop band from Edmonton, Alberta, Canada, formed in 2010. The band consists of vocalist Megan James and multi-instrumentalist/producer Corin Roddick. They released their debut album Shrines in 2012 to critical acclaim, followed by Another Eternity in 2015", 
    image: "../images/purityring.jpg", venue_id: kf.id
)






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