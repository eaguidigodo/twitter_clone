class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create 
    Post.create(content: params[:post][:content])
    puts "Je suis ici"#{params[:post][:content]}
    redirect_to posts_index_path
  end
end
