# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.destroy_all
Tag.destroy_all

event1 = Event.create(title: "Parker Lewis' Birthday", start_date: "August 8, 2015", start_time: "1:00 PM", address: "1234 Fake Street", city: "San Francisco", cost: "FREE", description: "Booze, games, and merrymaking.", image_url: 'http://i.imgur.com/hQDGZqQ.jpg?1')
tag1 = Tag.create(name: 'Educational')
tag2 = Tag.create(name: 'Cheap')
tag3 = Tag.create(name: 'Outdoor')

event1.tags << tag1
event1.tags << tag2
event1.tags << tag3