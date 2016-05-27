class Match < ActiveRecord::Base
	belongs_to :user

	def new
		Match.new(user_id: current_user.id)
	end
end
