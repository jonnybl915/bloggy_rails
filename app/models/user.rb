class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favorites
  has_many :posts, through: :favorites

  def has_favorited?(post)
    Favorite.find_by(user_id: id, post_id: post.id) != nil
  end
end
