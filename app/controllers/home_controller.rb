class HomeController < ApplicationController
  def index
  	@posts = Post.all
  end
  def record
  	post = Post.new
  	post.content = params[:content]
  	post.save
  	redirect_to '/home/index'
  end
  def destroy
  	one_post = Post.find(params[:post_id])
  	one_post.destroy
  	redirect_to '/home/index'

  end
  def update_view
  	@one_post = Post.find(params[:post_id])
  end
  def update
  	@one_post = Post.find(params[:post_id])
  	@one_post.content = params[:content]
  	redirect_to '/home/index'
  	
  end

end
