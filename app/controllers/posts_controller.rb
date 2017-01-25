class PostsController < ApplicationController

  def new

  end
  def index

    @posts = Post.all
  end
  def show
    @post = Post.find params[:id]
    @comments = Comment.where(post_id: params[:id])

  end
  def create
    Post.create(
            title: params[:title],
            body: params[:body],
            user_id: params[:user]
    )
    redirect_to '/'
  end
  def edit
    @post = Post.find params[:id]
  end
  def update
    @post = Post.find params[:id]

    @post.update(
            title: params[:title],
            body: params[:body]
    )
    redirect_to '/'
  end
  def favorite
    Favorite.where(
                user_id: current_user.id,
                post_id: params[:post_id]
    ).first_or_create
    redirect_to("/posts/#{params[:post_id]}")
  end
  def unfavorite
    Favorite.where(
        user_id: current_user.id,
        post_id: params[:post_id]
    ).delete_all
    redirect_to("/posts/#{params[:post_id]}")
  end
end