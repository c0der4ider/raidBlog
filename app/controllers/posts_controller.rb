class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      redirect_to root_path
    end
  end

  def show
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def post_params
      params.require(:post).permit(:content, :title, :category_id)
    end

    def set_post
      @post = Post.find(params[:id])
    end
end
