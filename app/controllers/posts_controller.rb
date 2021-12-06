class PostsController < ApplicationController
  def index
    @posts = Post.includes(:tags)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path
    else
      @posts = Post.all
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    2.times { @post.taggings << @post.taggings.build(tag: Tag.new) }
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :taggings_attributes => [:id, :tag_attributes => [:id, :name]])
  end

end
