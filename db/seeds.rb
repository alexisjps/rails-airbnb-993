# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'destroying all'
Flat.destroy_all
User.destroy_all
Booking.destroy_all
p 'destroy done'

p 'creating in progress'
Flat.create(name: "Flat 1", address: "10 avenue de la grande armée paris", description: "Description 1", price: 100, image: "https://images.unsplash.com/photo-1639377103323-10891b136ee2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80")
Flat.create(name: "Flat 2", address: "12 rue lesueur Paris", description: "Description 2", price: 200, image: "https://images.unsplash.com/photo-1624830313923-91b09c51b4e7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2053&q=80")
Flat.create(name: "Flat 3", address: "14 rue de la paix paris", description: "Description 3", price: 300, image: "https://images.unsplash.com/photo-1557236516-29504c9fe789?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80")
p 'flats it"s ok'

User.create(email: "test@test.com", password: '123456')

p 'users ok + flat ok'