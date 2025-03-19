class BlogsController < ApplicationController
       #  before_action :set_blog, only: %i[show edit update destroy ]

     def index
        @blogs = Blog.includes(:student)
     end
     def new
       @blog = Blog.new
     end
     def create
       @blog = Blog.new(blog_params)
       if @blog.save
         redirect_to blogs_path, notice: 'Student has been created successfully'
       else
         render :new
       end
     end
     def show
        @blog = Blog.find(params[:id])
     end
     def edit
        @blog = Blog.find(params[:id])
     end
     def update
        @blog = Blog.find(params[:id])
      if @blog = Blog.update(blog_params)
       redirect_to blogs_path, notice: 'Student has been updated successfully'
      else
       render :edit
      end
     end
     def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        redirect_to blogs_path, notice: 'Student has been deleted successfully'
     end
     
     private
     def blog_params
     params.require(:blog).permit(:title, :content)
     end
     def set_blog
       @blog = Blog.find(params[:id])
    end
end