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
{title: "Puppy", body: 'Do you ever see a puppy and think "oh my god i need it!!" ...well here, meet Spot', user_id: 1},
{title: "Weave", body: 'How would a women react if someone stole a weave from her head? Apparently not too kindly. But here I am, winded, but successful.', user_id: 1},
{title: "Twas twilight when I stole a duck", body: 'The ducks were aplenty, so who would notice if one was amiss?', user_id: 2},
{title: "The Mona Lisa", body: 'Went to le Louve and under the mask of darkness, and a bit of skill, I stole the beauty from France!', user_id: 1},
{title: "Pineapple", body: 'Ever swung by a fruit cart and gotten away with a whole pineapple!?', user_id: 3},
{title: "Rose", body: 'If you are broke and in love, what do you do? well you steal a rose and woo her anyway!', user_id: 2},
{title: "Beach", body: 'Coney Island now has no sand!!!! muahahaha', user_id: 1},
{title: "Pen", body: 'Been stealing pens from people in class for over 3 years now, and have a stockpile of 4,687 pens. Ha.', user_id: 3}

	])

Comment.create([
	{user_id: 1, post_id: 1, body: 'hes in mexico'}
	])	
