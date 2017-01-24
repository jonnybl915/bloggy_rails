class Post < ActiveRecord::Base
 validates :title, presence: true
 validates :body, presence: truegs
 belongs_to :user
 has_many :comments
end
