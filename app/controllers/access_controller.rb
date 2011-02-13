class AccessController < ApplicationController

  layout('front')

  before_filter :confirm_logged_in,
	:except => [:login, :attempt_login, :logout]

  def dashboard
	redirect_to(:controller => 'buildr', :action => 'index')
  end

  def login
	#display login form
  end

  def attempt_login
	#action controller to try to log users in
	authorized_user = User.authenticate(params[:username], params[:password])
	if authorized_user
		session[:user_id] = authorized_user.id
		session[:username] = authorized_user.username
		flash[:notice] = "You are now logged in!"
		redirect_to(:controller => 'access', :action => 'dashboard')
	else
		flash[:notice] = "Invalid username/password combination."
		redirect_to(:action => 'login')
	end
  end

  def logout
	session[:user_id] = nil
	session[:username] = nil
	flash[:notice] = "Bye Bye!"
	redirect_to(:action => 'login')
  end


end
