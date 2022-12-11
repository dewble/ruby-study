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

  def edit
	  @post = Post.find(params[:id])
  end

  def update
    # 기존 글 검색
    @post = Post.find(params[:id])
    # 기존 글 수정
    @post.update(title: params[:title], content: params[:content])
    # 확인을 위해 수정된 게시글로 리다이렉트
    redirect_to "/posts/show/#{@post.id}"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/posts/index"
  end

end