class UsersController < ApplicationController

	def login
		@user = User.new
	end

	def verify
		@user = User.new(params.require(:user).permit(:username, :password))
		if User.exists?(username: @user.username, password: @user.password)
			flash[:notice] = "Logged in as #{@user.username}"
			render(:action => 'main')
		else
			flash[:notice] = "Username and password not found"
			redirect_to(:action => 'login')
		end
	end

	def create
  		# Instantiate a new object using form parameters
  		@user = User.new
	end

	def verify_create

		@user = User.new(params.require(:user).permit(:username, :password, :verify_pass))
		if User.exists?(username: @user.username)
			flash[:notice] = "Username already in use. Please select another username."
			redirect_to(:action => 'create')
		elsif (@user.password != @user.verify_pass)
			flash[:notice] = "Passwords do not match, re-enter fields."
			redirect_to(:action => 'create')
		elsif @user.save 
			flash[:notice] = "Successfully created user."
			redirect_to(:action => 'login')
		else 
			redirect_to(:action => 'create')
		end
	end



	#def subject_params
  		# same as using "params[:subject]", except that it:
  		# - raises an error if :subject is not present
  		# - allows listed attributes to be mass-assigned
  		#params.require(:user).permit(:name, :password)
	#end

end
