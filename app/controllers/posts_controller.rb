class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :destroy, :update]
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create 
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_index_path, notice: "Tweet successfully created!"
    else 
      render :index
    end
  end

  def edit

  end
  

  def update
    if @post.update(post_params)
      redirect_to posts_index_path, notice: "Post successfully updated!"
    else
      render :edit
    end
  end

  def confirm
    @post = Post.new(post_params)
  end

  def destroy
    @post.destroy
    redirect_to posts_index_path, notice: "Tweet successfully deleted!"
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
