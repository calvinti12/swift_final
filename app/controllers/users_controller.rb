class UsersController < Clearance::UsersController
  before_action :require_login

  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
	@user = User.find(params[:id])
	@user.update(permit_params)
	 if @user.save
		redirect_to @user
	 else
		render 'edit'
	 end
   end

   private 
	def user_from_params
		user_params = params[:user] || Hash.new
		first_name = user_params.delete(:first_name)
		last_name = user_params.delete(:last_name)
		birthdate = user_params.delete(:birthdate)
		email = user_params.delete(:email)
		password = user_params.delete(:password)

		# assigned those data into Clearance object 
		Clearance.configuration.user_model.new(user_params).tap do |user|
			user.first_name = first_name
			user.last_name = last_name
			user.birthdate = birthdate
			user.email = email
			user.password = password
		end
	end

	# sanitize the user_params to allow these data field to store in the database
	def permit_params
		params.require(:user).permit(:first_name, :last_name, :birthdate, :email, :password, :image)
	end

end

