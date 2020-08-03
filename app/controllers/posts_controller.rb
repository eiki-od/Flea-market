class PostsController < ApplicationController
  before_action :set_product, except: [:index, :new, :create]
  def index
    @posts = Post.all
    @posts = Post.includes(:images).order('created_at DESC')
  end

  def new
    @post = Post.new
    @post.images.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  
  def post_params
    params.require(:post).permit(images_attributes: [:src])
  end

  def set_product
    @post = Post.find(params[:id])
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(product_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
  end
  
end
