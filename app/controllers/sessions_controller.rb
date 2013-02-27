class SessionsController < ApplicationController
  before_filter :redirect_home_if_signed_in, only: [:new, :create]

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
    flash[:notice] = "Logged out #{current_user.email}"
	sign_out_user
	redirect_to root_path
  end

end