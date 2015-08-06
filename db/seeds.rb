# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Comment.delete_all

Profile.delete_all

Event.delete_all

User.delete_all

user = User.create!  email: "Menachem@me.com", password: "whatever", password_confirmation: "whatever", organization: true
user2 = User.create!  email: "Eliott@me.com", password: "whatever", password_confirmation: "whatever", organization: true
user3 = User.create!  email: "Andrew@me.com", password: "whatever", password_confirmation: "whatever", organization: false
user4 = User.create!  email: "Brian@me.com", password: "whatever", password_confirmation: "whatever", organization: false
user5 = User.create!  email: "Erica@me.com", password: "whatever", password_confirmation: "whatever", organization: true
user6 = User.create!  email: "Ian@me.com", password: "whatever", password_confirmation: "whatever", organization: false
user7 = User.create!  email: "Alexis@me.com", password: "whatever", password_confirmation: "whatever", organization: false
user8 = User.create!  email: "Aaron@me.com", password: "whatever", password_confirmation: "whatever", organization: true

Profile.create! user_id: user.id, age: 21, full_name: "Students4Change", photo: "http://vignette4.wikia.nocookie.net/trollpasta/images/5/52/Shrek_smile.jpg/revision/latest?cb=20140330031740"
Profile.create! user_id: user2.id, age: 20, full_name: "CapeSports Kids", photo: "http://vignette4.wikia.nocookie.net/trollpasta/images/5/52/Shrek_smile.jpg/revision/latest?cb=20140330031740"
Profile.create! user_id: user3.id, age: 82, full_name: "Andrew Simor", photo: "http://vignette4.wikia.nocookie.net/trollpasta/images/5/52/Shrek_smile.jpg/revision/latest?cb=20140330031740"
Profile.create! user_id: user4.id, age: 33, full_name: "Brian Bugh", photo: "http://vignette4.wikia.nocookie.net/trollpasta/images/5/52/Shrek_smile.jpg/revision/latest?cb=20140330031740"
Profile.create! user_id: user5.id, age: 22, full_name: "Beauty Through Art", photo: "http://vignette4.wikia.nocookie.net/trollpasta/images/5/52/Shrek_smile.jpg/revision/latest?cb=20140330031740"
Profile.create! user_id: user6.id, age: 24, full_name: "Ian Schoonover", photo: "http://vignette4.wikia.nocookie.net/trollpasta/images/5/52/Shrek_smile.jpg/revision/latest?cb=20140330031740"
Profile.create! user_id: user7.id, age: 18, full_name: "Alexis Gillis", photo: "http://vignette4.wikia.nocookie.net/trollpasta/images/5/52/Shrek_smile.jpg/revision/latest?cb=20140330031740"
Profile.create! user_id: user8.id, age: 30, full_name: "IXPERIENCE", photo: "http://vignette4.wikia.nocookie.net/trollpasta/images/5/52/Shrek_smile.jpg/revision/latest?cb=20140330031740"

Event.create! name: "Soup Kitchen", description: "Help Stepanie's Soup Kitchen with their monthly food drive! From 5-7 PM on Sunday Afternoon, August 9 we will be packing food for over 300 people here in Capetown!", user_id: user.id, photo: "http://www.corbisimages.com/images/Corbis-42-25090051.jpg?size=67&uid=6bf73e10-bad2-4cb6-bd85-41ef23add35b", location: "122 Long St. Cape Town, South Africa"
Event.create! name: "Flag Football", description: "Play football with underprivilaged children from the nearby townships! The games will start at 4PM on Monday, August 10 and will probably last for an hour or two.", user_id: user2.id, photo: "http://i.i.cbsi.com/cnwk.1d/i/tim/2013/02/20/football_620x350.jpg",  location: "De Waal Park, Cape Town, South Africa"
Event.create! name: "Clean Up Cape Town", description: "Join CleanUp4Good as we spend an hour walking around town cleaning up litter from the streets, Help us keep our beautiful city beautiful", user_id: user8.id, photo: "http://www.chinadaily.com.cn/photo/images/attachement/jpg/site1/20110418/0013729e48090f16193a23.jpg",  location: "Cape Town, South Africa"
Event.create! name: "Paint those walls", description: "We will be going to a nearby township and be painting peoples homes and stores at no cost to them at all! All day Sunday, August 16! Express the artist within you!.", user_id: user5.id, photo: "http://www.hcdc.edu.ph/wp-content/uploads/2014/06/IMG_1699.jpg",  location: "Khayaleitcha, Cape Town, South Africa"
Event.create! name: "Clothes Drive", description: "This Monday, August 10 we will be hosting a clothing and shoe drive to benefit the homeless here in Cape Town. No experience needed, just a smile!", user_id: user.id, photo: "http://www.missiondc.org/data/Image/clothing_drive.jpg",  location: "88 Hatfield st. Cape Town, South Africa"
