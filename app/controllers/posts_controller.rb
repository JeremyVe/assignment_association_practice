class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @categories_options = Category.all.map{ |c| [c.name, c.id] }
    @post = Post.new
  end

  def create
    @post = Post.new(whitelisted_params)
    if @post.save
      flash[:success]= "You created a new post"
      redirect_to post_path(@post)
    else
      flash.now[:danger] = "Something wrong happen"
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @categories_options = Category.all.map{ |c| [c.name, c.id] }
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(whitelisted_params)
      flash[:success]= "You updated the post"
      redirect_to post_path(@post)
    else
      flash.now[:danger] = "Something wrong happen"
      render :edit
    end
  end

  private

  def whitelisted_params
    params.require(:post).permit(:title, :body, :category_id, :tag_ids => [] )
  end
end
