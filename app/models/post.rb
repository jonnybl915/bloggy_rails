class Post < ActiveRecord::Base
 validates :title, presence: true
 validates :body, presence: true

 belongs_to :user

 has_many :comments
 has_many :favorites
 has_many :followers, through: :favorites, source: :user


 def isfavorite?(post)
  Favorite.find_by(user_id: id, post_id: post.id) != nil
 end
end
