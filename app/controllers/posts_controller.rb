class PostsController < ApplicationController
  def index
    @posts = Post.all 
  end

  def new
  end

  def create
    Post.create(title: params[:title], content: params[:content]) 
    redirect_to "/posts/index"
  end

  def show
    @post = Post.find(params[:id])
  end
end