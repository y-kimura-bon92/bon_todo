class PostsController < ApplicationController
  before_action :authenticate_user


  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update 
    @post = Post.find_by(id: params[:id])
    @post.title = params[:title]
    @post.content = params[:content]
    if @post.save
      redirect_to("/posts/#{@post.id}")
    else
      render('posts/edit')
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      title: params[:title],
      content: params[:content]
    )
    if @post.save
      redirect_to('/posts/index')
    else
      render('posts/new')
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end
  
end
