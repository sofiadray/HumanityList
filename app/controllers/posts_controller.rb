class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @charity = Charity.find(params[:charity_id])
    @post = @charity.posts.new
  end

  def create
    @charity = Charity.find(params[:post][:charity_id])
    @post = @charity.posts.new(post_params)

    if @post.save
      flash[:message] = "Listing created"
      redirect_to charity_posts_path(@post.id)
    else
      render :new
    end
  end

  def show
    @charity = Charity.find(params[:charity_id])
    @post = Post.find(params[:id])
  end

  def edit
    @charity = Charity.find(params[:charity_id])
    @post = Post.find(params[:id])
  end

  def update
    @charity = Charity.find(params[:charity_id])
    @post = Post.find(params[:id])

    @post.update_attributes(post_params)

    if @post.update_attributes(post_params)
      redirect_to charity_post_path(@charity.id, @post.id)
    else
      render :new
    end
  end

  def destroy
    @charity = Charity.find(params[:charity_id])
    @post = @charity.posts.find(params[:id])
    @post.destroy

    if @post.destroy
      redirect_to charity_posts_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :image, :content, :charity_id)
  end

end
