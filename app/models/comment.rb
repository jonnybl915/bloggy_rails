class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  def find_by_post(id)
    Comment.where(post_id = id)
  end
end


