class MatchesController < ApplicationController
	def create
		Match.create(room_id: current_user.room_id, user_id: current_user.id)
	end
end
