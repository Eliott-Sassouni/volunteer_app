# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Profile.delete_all

Event.delete_all

User.delete_all

user = User.create!  email: "me@me.com", password: "whatever", password_confirmation: "whatever", organization: true
user2 = User.create!  email: "you@you.com", password: "whatever", password_confirmation: "whatever", organization: false
user3 = User.create!  email: "us@us.com", password: "whatever", password_confirmation: "whatever", organization: true

Profile.delete_all

Profile.create! user_id: user.id, age: 21, full_name: "Menachem Shemtov", photo: "https://www.facebook.com/photo.php?fbid=10152979864783549&set=a.434970793548.219060.617673548&type=1&theater"
Profile.create! user_id: user2.id, age: 30, full_name: "Eliott Sassouni", photo: "https://www.facebook.com/photo.php?fbid=10152979864783549&set=a.434970793548.219060.617673548&type=1&theater"
Profile.create! user_id: user3.id, age: 45, full_name: "Andrew Simor", photo: "https://www.facebook.com/photo.php?fbid=10152979864783549&set=a.434970793548.219060.617673548&type=1&theater"

Event.create! name: "Soup Kitchen", description: "Play football with other people.", user_id: user.id, photo: "http://i.i.cbsi.com/cnwk.1d/i/tim/2013/02/20/football_620x350.jpg"
Event.create! name: "Flag Football", description: "Play football with other people.", user_id: user.id, photo: "http://i.i.cbsi.com/cnwk.1d/i/tim/2013/02/20/football_620x350.jpg"
Event.create! name: "5K walk for homeless", description: "Play football with other people.", user_id: user.id, photo: "http://i.i.cbsi.com/cnwk.1d/i/tim/2013/02/20/football_620x350.jpg"