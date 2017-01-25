class CommentsController < ApplicationController
  def create
    Comment.create(
            body: params[:body],
            post_id: params[:post_id],
            user_id: params[:user_id]
    )
    redirect_to("/posts/#{params[:post_id]}")
  end
end