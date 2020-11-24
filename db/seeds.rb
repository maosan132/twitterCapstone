# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ fullname: 'Star Wars' }, { fullname: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Taste.destroy_all
Following.destroy_all 

User.create!([{
  username: 'user1',
  fullname: 'Mauricio Santos'
},
{
  username: 'user2',
  fullname: 'Fernando Torres'
},
{
  username: 'user3',
  fullname: 'Stella Rodríguez'
},
{
  username: 'user4',
  fullname: 'Felipe Medina'
},
{
  username: 'user5',
  fullname: 'Daniel Marquez'
}])

Taste.create!([{
  user_id: 1,
  text: 'I would recommend this book The Perfum by Patrick Suskind'
},
{
  user_id: 1,
  text: 'Milan Kundera with The Goodbye seduced me with the surreal magic'
},
{
  user_id: 2,
  text: 'García Márquez 100 years of solitude is a great novel very well written'
},
{
  user_id: 2,
  text: 'I read twice Emily Bronte Cumbres Borrascosas and always surprised me'
},
{
  user_id: 3,
  text: 'Ghost boy is a true story of a kid who lived in his unresponsive body'
},
{
  user_id: 3,
  text: 'When Sábato writes is like poetry in prose, I delighted with About Heroes and Graves'
},
{
  user_id: 4,
  text: 'When E.L. James Fifty Shades of Grey hit my shelve, it became a must read for everybody.'
},
{
  user_id: 4,
  text: 'Harry Potter and the Sorcerer is a very good and thrilling story!'
},
{
user_id: 5,
text: 'Tartt The Goldfinchhis talks about a mother killed in a terrorist attack.'
},
{
user_id: 5,
text: 'The Great Gatsby is Fitzgeralds most famous novel that has a movie too'
}])

Following.create!([{
  follower_id: 1,
  followed_id: 2
},
{
  follower_id: 1,
  followed_id: 3
},
{
  follower_id: 1,
  followed_id: 4
},
{
  follower_id: 1,
  followed_id: 5
},
{
  follower_id: 2,
  followed_id: 5
},
{
  follower_id: 3,
  followed_id: 5
},
{
  follower_id: 4,
  followed_id: 5
},
{
  follower_id: 3,
  followed_id: 2
},
{
  follower_id: 2,
  followed_id: 3
}])
