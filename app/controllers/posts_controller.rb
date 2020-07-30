class PostsController < ApplicationController
  def index
  end

  def show
  end
  
  def destory
    post = Post.find(params[:id])
    post.destroy 
  end
  
end
