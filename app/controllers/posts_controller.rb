class PostsController < ApplicationController
  def index
  end

  def show
    # destoryに以下を記入すると、エラーになる。showに記入すると、詳細ページの更新でDBから削除が行われる。
    # ８行目にbinding.pryを記述すると、値は取りに行っていることがわかる。▶︎記述内容は間違っていないと思う。
    @post = Post.find(params[:id])
    @post.destroy 
  end
  
  def destory
  end
  
end
