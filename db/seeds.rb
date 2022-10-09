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

Article.create(title: "#{User.first.username} first title seed", description: "#{User.first.username} first body seed", user_id: User.first.id)
Article.create(title: "#{User.first.username} second title seed", description: "#{User.first.username} second body seed", user_id: User.first.id)
Article.create(title: "#{User.first.username} third title seed", description: "#{User.first.username} third body seed", user_id: User.first.id)

Article.create(title: "#{User.find(2).username} first title seed", description: "#{User.find(2).username} first body seed", user_id: User.find(2).id)
Article.create(title: "#{User.find(2).username} second title seed", description: "#{User.find(2).username} second body seed", user_id: User.find(2).id)
Article.create(title: "#{User.find(2).username} third title seed", description: "#{User.find(2).username} third body seed", user_id: User.find(2).id)


Article.create(title: "#{User.last.username} first title seed", description: "#{User.last.username} first body seed", user_id: User.last.id)
Article.create(title: "#{User.last.username} second title seed", description: "#{User.last.username} second body seed", user_id: User.last.id)
Article.create(title: "#{User.last.username} third title seed", description: "#{User.last.username} third body seed", user_id: User.last.id)
