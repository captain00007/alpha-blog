# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create(username: "Georges", email: "georges@example.com", password: "georges1234")
User.create(username: "Guy", email: "guy@example.com", password: "guy1234")
User.create(username: "Gustinvil", email: "gustinvil@example.com", password: "gustinvil1234", admin: true)

Category.create(name: "Soccer")
Category.create(name: "Basket")
Category.create(name: "Fashion")

Article.create(title: "#{User.first.username} first title seed", description: "#{User.first.username} first body seed", user_id: User.first.id, category_ids: [1])
Article.create(title: "#{User.find(2).username} first title seed", description: "#{User.find(2).username} first body seed", user_id: User.find(2).id, category_ids: [2])
Article.create(title: "#{User.last.username} first title seed", description: "#{User.last.username} first body seed", user_id: User.last.id, category_ids: [1,2,3])
