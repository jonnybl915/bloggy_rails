# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
# 5.times do
#
#   post = Post.create(
#           title: Faker::GameOfThrones.house,
#           body: Faker::Hipster.paragraph
#   )

# end

10.times do

  user = User.create(
         email: Faker::Internet.email

  )
  10.times do
    user.posts << Post.new(
                   title: Faker::GameOfThrones.dragon,
                   body: Faker::ChuckNorris.fact
    )

    10.times do
      user.posts.last.comments << Comment.new(
                                   body: Faker::GameOfThrones.city,
                                   user: user
      )
    end
  end
end

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