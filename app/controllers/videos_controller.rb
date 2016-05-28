class VideosController < ApplicationController
protect_from_forgery :except => [:create]
require 'opentok'

def create
	if Room.last.user2.blank? && Room.last.user1 != blank?
		@room = Room.last
		@room.update(user2: current_user.id)
		@room.save
		current_user.room_id = Room.last.id
		current_user.save
	else 
		@room = Room.create(user1: current_user.id)
	end
end



def show
	@api_key = "45592332"
	# @opentok = OpenTok::OpenTok.new(@api_key, 'ce4771d7c91a3f2e773ae76b1d6d9f6db5301e5e')
	# @session = @opentok.create_session	
	@session_id = '1_MX40NTU5MjMzMn5-MTQ2MzgwMTY0NTgyM345cGp4cGdRWnFrUWR4dXRRYTl5a29lRUp-fg'
	@token = 'T1==cGFydG5lcl9pZD00NTU5MjMzMiZzaWc9MjFlMmUyMzQxMDgzM2Y1MTk1OTU0MzYzYjNiNjE0MjQ1MmZhZGVlYTpzZXNzaW9uX2lkPTFfTVg0ME5UVTVNak16TW41LU1UUTJNemd3TVRZME5UZ3lNMzQ1Y0dwNGNHZFJXbkZyVVdSNGRYUlJZVGw1YTI5bFJVcC1mZyZjcmVhdGVfdGltZT0xNDYzODAxNjY3Jm5vbmNlPTAuMDM5MTI2Njc1ODA4ODAyMjUmcm9sZT1wdWJsaXNoZXImZXhwaXJlX3RpbWU9MTQ2NDQwNjQ2NQ=='
end

end
