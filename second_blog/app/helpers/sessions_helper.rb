module SessionsHelper
	#set a current user
	def login user
		session[:user_id] = user.id
		@current_user = user
	end
	#define current user for late use & logged_in?
	#set a current user if there isn't one already
	def current_user
		@current_user ||= User.find(session[:user_id])
	end
	#check for current user
	def logged_in?
		if current_user == nil
			redirect_to'/sign_in'
		end
	end

end
