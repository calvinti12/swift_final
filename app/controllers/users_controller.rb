class UsersController < Clearance::UsersController
  protect_from_forgery :except => [:update]
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  	render :partial => "directory_name/dynamic"
  end

  def update
  	prefer_start_age, prefer_end_age = params[:prefAge].split(' - ')
  	current_user.update(country: params[:country], state: params[:country], gender: params[:gender], age: params[:age], description: params[:description], prefer_start_age: prefer_start_age, prefer_end_age: prefer_end_age)
	 if current_user.save
		redirect_to '/home'
	 else
		render 'edit'
	 end
   end

   private
	def user_from_params
		user_params = params[:user] || Hash.new
		first_name = user_params.delete(:first_name)
		last_name = user_params.delete(:last_name)
		age = user_params.delete(:age)
		email = user_params.delete(:email)
		password = user_params.delete(:password)

		# assigned those data into Clearance object
		Clearance.configuration.user_model.new(user_params).tap do |user|
			user.first_name = first_name
			user.last_name = last_name
			user.age = age
			user.email = email
			user.password = password
		end
	end

	# sanitize the user_params to allow these data field to store in the database
	def permit_params
		params.require(:user).permit(:prefer_state, :image, :first_name, :last_name, :age, :description, :country, :state, :gender, :prefer_gender, :prefer_country, :prefer_start_age, :prefer_end_age, :email, :password)
	end

end
