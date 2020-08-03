class PostsController < ApplicationController
  before_action :set_product, except: [:index, :new, :create]
  def index
    @post
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
  
  
  def set_product
    @post = Post.find(params[:id])
  end
  
  def show
    # destoryに以下を記入すると、エラーになる。showに記入すると、詳細ページの更新でDBから削除が行われる。
    # ８行目にbinding.pryを記述すると、値は取りに行っていることがわかる。▶︎記述内容は間違っていないと思う。
    @post = Post.find(params[:id])
    @post.destroy 
<<<<<<< HEAD
=======
  end
  
  def destory
>>>>>>> bc074e5afceedfc4fb9feecbefbe717597f4e73e
  end
  
  def destory
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
  
  private
  
  def post_params
    params.require(:post).permit(images_attributes: [:src])
  end
end
