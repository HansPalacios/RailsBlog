class SigninController < ApplicationController

	def create
		p "sign in create #{params}"
		@user = User.find_by(username: params[:username])
		p @user
		if @user && @user.password == params[:password]    
			session[:user_id] = @user.id    
			flash[:message] = "You've been signed in successfully."
			redirect_to '/'
		else    
			flash[:message] = "There was a problem signing you in."
			redirect_to '/'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end
end
