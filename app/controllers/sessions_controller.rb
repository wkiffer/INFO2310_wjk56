class SessionsController < ApplicationController

  def new
  end

  def create
    email = params[:session][:email]
	plain_password = params[:session][:password]
	user = User.authenticate(email, params[:session][:password])
	if user
		flash[:notice] = "Welcome, #{email}!"
		sign_in(user)
		redirect_to user_path(user)
	else
	    flash[:error] = "Invalid email/password combination"
		redirect_to new_session_path
	end
	
  end

  def destroy
    user = current_user
	sign_out_user
	flash[:notice] = "Logged out #{user.email}"
	redirect_to new_session_path
  end

end