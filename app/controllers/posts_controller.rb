class PostsController < ApplicationController
  before_action :find_id, except: [:index, :new, :show, :create]

  def index
  end

  def show
    @post = Post.last
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to @post, notice: "Post was created succesfully"
    else
      render 'new'
    end
  end
  


  private

  def post_params
    params.require(:post).permit(:date, :rationale)
  end

  def find_id
    @post = Post.find(params[:id])
  end

end
