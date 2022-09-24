class PostsController < ApplicationController
  before_action :fetch_author

  def index
    @posts = @author.posts
  end

  def show
    @post = @author.posts.find(params[:id])
  end

  def create
    @post = Post.create(post_params)
    @post.user = current_user
    respond_to do |format|
      format.html do
        if @post.save
          flash[:success] = 'New Post created successfully'
          redirect_to user_posts_path(current_user)
        else
          flash.now[:error] = 'An error occurred : Post could not be created'
        end
      end
    end
  end

  private

  def fetch_author
    @author = User.find(params[:user_id])
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end
end
