# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(username: "Gustinvil", email: "gustinvil@example.com", password: "gustinvil1234", admin: true)
User.create(username: "Georges", email: "georges@example.com", password: "georges1234")
User.create(username: "Guy", email: "guy@example.com", password: "guy1234")

Category.create(name: "Football")
Category.create(name: "Basketball")
Category.create(name: "Formule 1")
Category.create(name: "LifeStyle")
Category.create(name: "Fashion")

Article.create(title: "Messi at Miami", description: "LM 10 the best football player in the world is now at MLS", user_id: User.first.id, category_ids: [1])
Article.create(title: "Neymar show", description: "Njr 10 one of the best football player in the world will have a tour in the sea", user_id: User.first.id, category_ids: [1,4])
Article.create(title: "Hamilton in Brazil", description: "Hamilton the best formule 1 driver was in Brazil this year", user_id: User.first.id, category_ids: [3,4])

Identification.create(register_number: "af2019")
Identification.create(register_number: "ag2029")
Identification.create(register_number: "ah2039")