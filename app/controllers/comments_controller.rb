class CommentsController < ApplicationController
  before_filter :load_post

  protected
  def load_post
    @post = Post.find(params[:post_id])
  end

  public
  def create
    @post.comments.create(params[:comment])
    redirect_to @post
  end
end
