class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :destroy, :update]
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create 
    Post.create(post_params)
    puts "Je suis ici"#{params[:post][:content]}
    redirect_to posts_index_path
  end

  def edit
  end

  def update
    redirect_to posts_index_path, notice: "Post successfully updated!"
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
