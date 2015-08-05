# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all

user = User.create!  email: "me@me.com", password: "whatever", password_confirmation: "whatever", organization: true
user2 = User.create!  email: "you@you.com", password: "whatever", password_confirmation: "whatever", organization: false
user3 = User.create!  email: "us@us.com", password: "whatever", password_confirmation: "whatever", organization: true

Profile.delete_all

Profile.create! user_id: user.id, age: 21, full_name: "Menachem Shemtov", photo: "https://www.facebook.com/photo.php?fbid=10152979864783549&set=a.434970793548.219060.617673548&type=1&theater"
Profile.create! user_id: user2.id, age: 30, full_name: "Eliott Sassouni", photo: "https://www.facebook.com/photo.php?fbid=10152979864783549&set=a.434970793548.219060.617673548&type=1&theater"
Profile.create! user_id: user3.id, age: 45, full_name: "Andrew Simor", photo: "https://www.facebook.com/photo.php?fbid=10152979864783549&set=a.434970793548.219060.617673548&type=1&theater"

Event.delete_all

Event.create! name: "Flag Football", description: "Play football with other people.", user_id: user.id, photo: "https://www.facebook.com/photo.php?fbid=10152979864783549&set=a.434970793548.219060.617673548&type=1&theater"
