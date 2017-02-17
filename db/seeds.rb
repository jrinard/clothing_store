# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(first_name: 'user', last_name: 'user', email: 'user@email.com', password: 'p', password_confirmation: 'p', admin: 'false')
josh = User.create(first_name: 'josh', last_name: 'josh', email: 'admin@email.com', password: 'p', password_confirmation: 'p', admin: 'true')
non = User.create(first_name: 'non', last_name: 'non', email: 'non@email.com', password: 'p', password_confirmation: 'p')
