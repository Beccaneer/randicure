class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	before_action :authenticate_user!


	def home
 		if current_user && current_user.sign_in_count == 1
  		unless session[:display_welcome]
    		flash.now[:notice] = "Welcome!"
    		session[:display_welcome] = true
  		end
 		end
	end

end
