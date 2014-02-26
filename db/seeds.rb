# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

attendees = Attendee.create!([{ first_name: 'Michael', last_name: 'Draper', email: 'mtdraper@iupui.edu'}, 
  { first_name: 'John', last_name: 'Doe', email: 'jdoe@fake.com'}, 
  { first_name: 'Jane', last_name: 'Doe', email: 'janedoe@fake.com'}, 
  { first_name: 'Great', last_name: 'Scott', email: 'marty@fake.com'}])

locations = Location.create!([{ name: 'ET Building'}, 
  { name: 'UITS Building'}, 
  { name: 'Taylor Hall'}])
  
sponsors = Sponsor.create!([{ name: 'CIT Department'}, 
  { name: 'Oracle'}, 
  { name: 'IU Alumni Association'}])
  
events = Event.create!([{ name: 'Hook students while young', start_date: Date.new(2014, 02, 13), end_date: Date.new(2014, 02, 24), :sponsors => [sponsors.last, sponsors.first]},
  {name: 'Hook students while young Mk.2', start_date: Date.new(2014, 03, 10), end_date: Date.new(2014, 03, 17), :sponsors => [sponsors.first]}])
  
meetings = Meeting.create!([{ name: 'Come Get Some Caffeine', start_time: DateTime.new(2014, 02, 14) , end_time: DateTime.new(2014, 02, 17), :location => locations.first, :event =>  events.first }, 
  {  name: 'We want your money', start_time: DateTime.new(2014, 02, 19) , end_time: DateTime.new(2014, 02, 24), :location => locations.last, :event => events.first}, 
  {  name: 'Benefits of joining', start_time: DateTime.new(2014, 03, 10) , end_time: DateTime.new(2014, 03, 17), :location => locations.first, :event =>  events.last},
  {  name: 'We want your money', start_time: DateTime.new(2014, 03, 10) , end_time: DateTime.new(2014, 03, 17), :location => locations.last, :event => events.last}])
  

