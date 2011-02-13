class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  
  #@user_id = session[:user_id].to_i
  #@username = session[:username].to_s
  
  def confirm_logged_in
	unless session[:user_id]
		flash[:notice] = "Please log in."
		redirect_to(:controller => 'access', :action => 'login')
		return false # very important, halts the before_filter
	else
		return true
	end
  end
end
