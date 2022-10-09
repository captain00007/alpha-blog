# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(username: "Georges", email: "georges@example.com", password_digest: "georges1234")
User.create(username: "Guy", email: "guy@example.com", password_digest: "guy1234")
User.create(username: "Gustinvil", email: "gustinvil@example.com", password_digest: "gustinvil1234")

Article.create(title: "First title seed", description: "First body seed", user_id: User.first.id)
Article.create(title: "Second title seed", description: "Second body seed", user_id: User.find(2).id)
Article.create(title: "Third title seed", description: "Third body seed", user_id: User.last.id)