class FavoritesController < ApplicationController
  def show_favs
    @favs = Favorite.where(user_id: current_user.id)
  end
  def show_post(favorite)
    @post = Post.find(favorite.post_id)
  end
end