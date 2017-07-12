# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create ([
{username: 'Cam', fname: 'Cam', lname: 'Crews', email: 'cam@nycda.com', password: 'test'},
{username: 'Nick', fname: 'Nick', lname: 'Fehlinger', email: 'nf@nycda.com', password: 'test'},
{username: 'Dennycals', fname: 'Dennis', lname: 'Cal', email: 'cam@nycda.com', password: 'test'},
	])

Post.create([
{user_id: 2, title: "Florida", body: 'hola'}
	])

Comment.create([
	{user_id: 1, post_id: 1, body: 'hes in mexico'}
	])	
