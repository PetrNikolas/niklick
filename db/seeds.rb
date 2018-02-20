# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({
  uid: 'johnreed',
  nickname: 'johnreed',
  provider: 'email',
  name: 'John Reed',
  email: 'johnreed@johnreed.com',
  password: '12345678',
  password_confirmation: '12345678'
},{
  uid: 'petrnikolas',
  nickname: 'petrnikolas',
  provider: 'email',
  name: 'Petr Nikolas',
  email: 'petrnikolas@hello.com',
  password: '12345678',
  password_confirmation: '12345678'
})