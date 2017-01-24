class PostsController < ApplicationController

  def new

  end
  def index

    @posts = Post.all
  end
  def show
    @post = Post.find params[:id]
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
end