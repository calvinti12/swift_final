class UsersController < Clearance::UsersController

  def new
  	@user = User.new
  end

  # def create

  # 	@user = User.new(prefer_gender: params[:prefer_gender], prefer_country: params[:prefer_country], prefer_state: params[:prefer_state], prefer_age: params[:prefer_age], description: params[:description])

  #   if @user.save
  # 		render 'show'
  # 	else
  # 		render 'new'
  # 	end
  # end

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
		birthday = user_params.delete(:birthday)
		email = user_params.delete(:email)
		password = user_params.delete(:password)

		# assigned those data into Clearance object
		Clearance.configuration.user_model.new(user_params).tap do |user|
			user.first_name = first_name
			user.last_name = last_name
			user.birthday = birthday
			user.email = email
			user.password = password
		end
	end

	# sanitize the user_params to allow these data field to store in the database
	def permit_params

		params.require(:user).permit(:first_name, :last_name, :birthday, :description, :country, :state, :gender, :prefer_gender, :prefer_country, :prefer_age, :email, :password)

	end

end
