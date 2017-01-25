# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# 30.times do
#   User.create(
#               email: Faker::Internet.email,
#               password: 'password',
#              )
#
# end
# 30.times do
#
#   Post.create(
#               title: Faker::GameOfThrones.house,
#               body: Faker::Hipster.paragraph,
#               user_id: rand(93..120)
#               )
# end
# #
# 30.times do
#   Comment.create(
#                  body: Faker::Hipster.paragraph,
#                  post_id: rand(93..120),
#                  user_id: rand(93..120)
#                 )
# end
#
30.times do
  Favorite.create(
                  user_id: rand(93..120),
                  post_id: rand(93..120)
                  )
end



# 10.times do
#
#   user = User.create(
#          email: Faker::Internet.email
#
#   )
#   10.times do
#     user.posts << Post.new(
#                    title: Faker::GameOfThrones.dragon,
#                    body: Faker::ChuckNorris.fact
#     )
#
#     10.times do
#       user.posts.last.comments << Comment.new(
#                                    body: Faker::GameOfThrones.city,
#                                    user: user
#       )
#     end
#   end
# end

# 5.times do
#
#   author = Author.create(
#       name: Faker::Book.author,
#       email: Faker::Internet.email,
#       bio: Faker::Hipster.paragraph
#   )
#
#   5.times do
#     author.books << Book.new(
#         title: Faker::Book.title,
#         summary: Faker::Hipster.paragraphs
#     )
#   end
# end