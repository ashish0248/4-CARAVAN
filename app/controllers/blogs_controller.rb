class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  	@blog = blog.new(blog_params)
  	list.save
  	redirect_to blogs_path
  end

  def edit
  end

  private
  def 	blog_params
  	prams.require(:blog).permit(:title, :category, :body)
  end

end
