class PostsController < ApplicationController
  # before_action :set_post, except: [:index, :new, :create]
  def index
    @posts = Post.includes(:images).order('created_at DESC')
  end

  def new
    @post = Post.new
  end
  
  def create
    Post.create(post_params)
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
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  
  def post_params
    params.require(:post).permit(:name)
  end
end
