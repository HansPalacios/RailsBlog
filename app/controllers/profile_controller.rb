class ProfileController < ApplicationController
	before_action :login_protect, only: [:index]

	def index
		@posts = @current_user.posts
		# erb :profile
	end

	def create
		p params
	   if @current_user.password == params[:password]
	     @current_user.update(
	       fname: params[:fname],
	       lname: params[:lname]
	     )
	     redirect_to '/profile'
	   else
	     redirect_to '/'
	   end
	 end

	def update
		@current_user.update( username: params[:username], password: params[:password], fname: params[:fname], lname: params[:lname], email: params[:email])
		redirect_to '/profile'
	end

	def destroy
		User.transaction do
			@current_user.posts.destroy_all
			@current_user.destroy
			session[:user_id] = nil
		end
		redirect_to '/'
	end

end
