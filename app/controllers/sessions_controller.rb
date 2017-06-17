class SessionsController < ApplicationController

	def new
		if current_user
			redirect_to profile_path
		else
			render 'new'
		end	
	end

	# not authenticating???
	def create
	  user = User.find_by_email(user_params[:email])
	  if user
	  	session[:user_id] = user.id
	  	redirect_to profile_path
	  else
	    redirect_to login_path
	  end
	end

	# clear session (log out user)
	def destroy
	  session[:user_id] = nil
	  redirect_to root_path
	end

	private
	  def user_params
	    params.require(:user).permit(:email, :password)
	  end
	  
end
