class PostsController < ApplicationController
  # before_action :set_post, except: [:index, :new, :create]
  def index
    @posts = Post.includes(:images).order('created_at DESC')
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    @post.save!
  end
  
  
  # def set_post
  #   @post = Post.find(params[:id])
  # end
  
  def show
    @posts = Post.all
  end

  def edit
  end
  
  def destory
  end
  
  
  def update
  end
  
  private
  
  def post_params
    params.require(:post).permit(:name,:about,:size,:bland,:status,:fee,:days,:price)
  end
end
