class UsersController < Clearance::UsersController
	protect_from_forgery :except => [:update]

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
  	byebug
  	current_user.update(country: params[:country], state: params[:state], gender: params[:gender], prefer_gender: params[:interIn], prefer_age: params[:prefAge])
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

	def params_from_ajax
	end
	

	# sanitize the user_params to allow these data field to store in the database
	def permit_params
		params.require(:user).permit(:prefer_state, :image, :first_name, :last_name, :age, :description, :country, :state, :gender, :prefer_gender, :prefer_country, :prefer_age, :email, :password)
	end

end
