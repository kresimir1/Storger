# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
