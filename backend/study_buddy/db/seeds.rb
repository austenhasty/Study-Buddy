# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(first_name: 'Austen', last_name: 'Hasty', username: 'ahasty', password: '1234')
user_2 = User.create(first_name: 'Bobby', last_name: 'Newport', username: 'bnewport', password: 'bobby')

topic_1= Topic.create(name: "JavaScript")
topic_2= Topic.create(name: "Ruby")
topic_3= Topic.create(name: "Ruby on Rails")
topic_4= Topic.create(name: "React")

note_1= Notecard.create(term: "When was JavaScript created?", definition: "1995")
note_2= Notecard.create(term: "Who invented JavaScript?", definition: "Brendan Eich")
note_3= Notecard.create(term: "When was Ruby created?", definition: "Mid 1990s")
note_4= Notecard.create(term: "Who invented Ruby?", definition: "Yukihiro 'Matz' Matsumoto")
note_5= Notecard.create(term: "When was Rails created?", definition: "2004")
note_6= Notecard.create(term: "Who created Rails?", definition: "David Heinemeier Hansson")
note_7= Notecard.create(term: "Who invented React?", definition: "Jordan Walke")
note_8= Notecard.create(term: "When was React Created?", definition: "2013")

u_t1= UsersTopic.create(user_id: 1, topic_id: 1)
u_t2= UsersTopic.create(user_id: 1, topic_id: 2)
u_t3= UsersTopic.create(user_id: 2, topic_id: 3)
u_t4= UsersTopic.create(user_id: 2, topic_id: 4)

topic_notes1= TopicsNotecard.create(topic_id: 1, notecard_id: 1)
topic_notes2= TopicsNotecard.create(topic_id: 1, notecard_id: 2)
topic_notes3= TopicsNotecard.create(topic_id: 2, notecard_id: 3)
topic_notes4= TopicsNotecard.create(topic_id: 2, notecard_id: 4)
topic_notes5= TopicsNotecard.create(topic_id: 3, notecard_id: 5)
topic_notes6= TopicsNotecard.create(topic_id: 3, notecard_id: 6)
topic_notes7= TopicsNotecard.create(topic_id: 4, notecard_id: 7)
topic_notes8= TopicsNotecard.create(topic_id: 4, notecard_id: 8)
