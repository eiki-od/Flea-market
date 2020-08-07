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

  
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to post_path(post.id)
    else
      render "posts/edit"
    end
  end

  def destory
  end
  
  private
  
  def post_params
    params.require(:post).permit(:name,:about,:size,:bland,:status,:fee,:days,:price,:method,:area,:category,:image)
  end
end
