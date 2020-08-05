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
    if @post.save
      redirect_to post_path(@post.id)
    else
      render "posts/new"
  end
end
  
  
  # def set_post
  #   @post = Post.find(params[:id])
  # end
  
  def show
    @post = Post.find(params[:id])
  end

  def edit
  end
  
  def destory
  end
  
  
  def update
  end
  
  private
  
  def post_params
    params.require(:post).permit(:name,:about,:size,:bland,:status,:fee,:days,:price,:method,:area,:category)
  end
end
