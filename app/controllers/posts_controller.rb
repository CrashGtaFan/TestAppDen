class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)
    respond_with @post
  end

  def destroy
    @post = Post.find(params[:id])
    respond_with @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end
