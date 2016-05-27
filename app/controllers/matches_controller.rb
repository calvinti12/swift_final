class MatchesController < ApplicationController
	protect_from_forgery :except => [:create]
	
	def create
		Match.create(room_id: current_user.room_id, user_id: current_user.id)
		byebug
	end
end
