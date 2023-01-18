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

image_path = Rails.root.join("app/assets/images/appart1.jpeg")

cloudinary_image = Cloudinary::Uploader.upload(image_path)

image = ActiveStorage::Blob.create_and_upload!(
  io: URI.open(cloudinary_image['secure_url']),
  filename: 'example.jpg',
  content_type: 'image/jpg'
)
# mon_produit = Product.create(name: "Example product")
# product.image.attach(image)

p 'creating in progress'
flat_1 = Flat.create(name: "Flat 1", address: "10 avenue de la grande armée paris", description: "Description 1", price: 100)
flat_1.photo.attach(image)
Flat.create(name: "Flat 2", address: "12 rue lesueur Paris", description: "Description 2", price: 200)
Flat.create(name: "Flat 3", address: "14 rue de la paix paris", description: "Description 3", price: 300)
p 'flats it"s ok'

User.create(email: "test@test.com", password: '123456')

p 'users ok + flat ok'