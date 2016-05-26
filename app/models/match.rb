class Match < ActiveRecord::Base
	def new
		Match.new(user_id: current_user.id)
	end
end


--> when you generate a videocall generate call_id
in the end 
both users send there current_user.id to the controller + videocall_id

this creates two entries
1. user_id: 1 video_call_id: 5
2. user_id: 2 video_call_id: 5

The video_call_id will be the sessionid by tokbox
