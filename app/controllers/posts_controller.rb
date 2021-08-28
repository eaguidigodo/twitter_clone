class PostsController < ApplicationController
  def index
  end

  def create 
    Post.create(content: params[:post][:content])
    puts "Je suis ici"#{params[:post][:content]}
    redirect_to posts_index_path
  end
end
