class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
		post = Post.find_by(params[:category_id])
		if post.present?
		  redirect_to new_post_path, notice: "This category post already created"
		else
			if @post.save
			   redirect_to @post
			else
				render 'new'
			end	
		end
	end

	def update
 	 @post = Post.find(params[:id])
 
  		if @post.update(post_params)
    		redirect_to @post
  		else
    		render 'edit'
  		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end

	private
	def post_params
		params.require(:post).permit(:title, :text, :category_id)
	end
end
