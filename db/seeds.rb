# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
user_attributes =
[{
   first_name: 'Admin',
   last_name: 'Adminic',
   email: 'admin@gmail.com',
   role: 'admin',
   password: 'admin1' },
  { first_name: 'John',
    last_name: 'White',
    email: 'john@gmail.com',
    password: 'johnpassword'},
  {
    first_name: 'Amanda',
    last_name: 'Black',
    email: 'amanda@gmail.com',
    password: 'amandapassword'
 }]
 user_attributes.each do |attributes|
  user= User.new(attributes)
  user.save
end

child_attributes =
  [
    { first_name: 'Brian', last_name: 'White', dob: Date.parse('01/03/2015'), gender: 'male', user_id: 2 },
    { first_name: 'Julia', last_name: 'White', dob: Date.parse('12/10/2013'), gender: 'female', user_id: 2 },
    { first_name: 'Tony', last_name: 'Black', dob: Date.parse('03/12/2009'), gender: 'male', user_id: 3 },
  ]
  child_attributes.each do |attributes|
    child = Child.new(attributes)
    child.save
end
