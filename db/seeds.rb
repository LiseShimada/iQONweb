# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "example1", email: "example1@ex.com", password: "example1")
User.create(name: "example2", email: "example2@ex.com", password: "example2")
User.create(name: "example3", email: "example3@ex.com", password: "example3")

Post.create(date: "2000-01-01", subject: "1", title: "example1", comment: "example1", picture: "iQ_1.jpg")
Post.create(date: "2000-01-01", subject: "2", title: "example2", comment: "example2", picture: "iQ_2.jpg")
Post.create(date: "2000-01-01", subject: "3", title: "example3", comment: "example3", picture: "iQ_3.jpg")
Post.create(date: "2000-01-01", subject: "4", title: "example4", comment: "example4", picture: "iQ_4.jpg")
Post.create(date: "2000-01-01", subject: "5", title: "example5", comment: "example5", picture: "iQ_5.jpg")