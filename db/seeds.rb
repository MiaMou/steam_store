# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(nickname: 'user', username: 'user')
user.password = "user"
user.password_confirmation = "user"
user.save

admin = User.new(nickname: 'admin', username: 'admin', role: "admin")
admin.password = "admin"
admin.password_confirmation = "admin"
admin.save