# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(fname: 'Nayana', lname: 'Bhagat', gender: 'female', dob:'1991-03-01', empNo: '678721', address: 'Andheri', hobbies: 'Reading', admin: 'true', email: 'nayana@tcs.com', password: 'nayana123', password_confirmation: 'nayana123')