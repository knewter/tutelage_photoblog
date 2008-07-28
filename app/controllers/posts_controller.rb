class PostsController < ApplicationController
  before_filter :load_post,     :only => [:show, :edit, :update, :destroy]
  before_filter :load_posts,    :only => [:index]
  before_filter :load_comments, :only => [:show]

  protected
  def load_comments
    @comments = @post.comments
    @comment  = Comment.new(params[:comment])
  end
  def load_post
    @post = Post.find(params[:id])
  end
  def load_posts
    @posts = Post.find(:all)
  end
  public
  # GET /posts
  def index
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    respond_to do |format|
      if @post.save
        flash[:notice] = 'Post was successfully created.'
        format.html { redirect_to(@post) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    respond_to do |format|
      if @post.update_attributes(params[:post])
        flash[:notice] = 'Post was successfully updated.'
        format.html { redirect_to(@post) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post.destroy
  end
end
