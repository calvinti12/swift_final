  class HomeController < ApplicationController
    protect_from_forgery :except => [:render_video]
    def index
    	@users = User.all
    	@rooms = current_user.rooms
    	@user = current_user
    	@matches = []
    	@user.matches.each do |match|
    		Match.all.each do |match_other|
    			if match.room_id == match_other.room_id
    				@matches << match
    			end
    		end
    	end
  	@api_key = "45592332"
  	# @opentok = OpenTok::OpenTok.new(@api_key, 'ce4771d7c91a3f2e773ae76b1d6d9f6db5301e5e')
  	# @session = @opentok.create_session	
  	@session_id = '2_MX40NTU5MjMzMn5-MTQ2NDQxMTMzNDI2NX56ZjNNcGd4MGZycDN3RUNtbS81Yk9Ed09-fg'
  	@token = 'T1==cGFydG5lcl9pZD00NTU5MjMzMiZzaWc9M2NiZWZhMzFmOWZmMWM5ZDJhZDdjMjk3NzFmNWRhYjg3MjliOGMwNTpzZXNzaW9uX2lkPTJfTVg0ME5UVTVNak16TW41LU1UUTJORFF4TVRNek5ESTJOWDU2WmpOTmNHZDRNR1p5Y0ROM1JVTnRiUzgxWWs5RWQwOS1mZyZjcmVhdGVfdGltZT0xNDY0NDExMzQzJm5vbmNlPTAuNzI1OTY4MDczMzU1MDM0JnJvbGU9cHVibGlzaGVyJmV4cGlyZV90aW1lPTE0NjUwMTYxNDA='
    end

    def render_video
      respond_to do |format|
          format.js
      end
    @api_key = "45592332"
    # @opentok = OpenTok::OpenTok.new(@api_key, 'ce4771d7c91a3f2e773ae76b1d6d9f6db5301e5e')
    # @session = @opentok.create_session  
    @session_id = '2_MX40NTU5MjMzMn5-MTQ2NDQxMTMzNDI2NX56ZjNNcGd4MGZycDN3RUNtbS81Yk9Ed09-fg'
    @token = 'T1==cGFydG5lcl9pZD00NTU5MjMzMiZzaWc9M2NiZWZhMzFmOWZmMWM5ZDJhZDdjMjk3NzFmNWRhYjg3MjliOGMwNTpzZXNzaW9uX2lkPTJfTVg0ME5UVTVNak16TW41LU1UUTJORFF4TVRNek5ESTJOWDU2WmpOTmNHZDRNR1p5Y0ROM1JVTnRiUzgxWWs5RWQwOS1mZyZjcmVhdGVfdGltZT0xNDY0NDExMzQzJm5vbmNlPTAuNzI1OTY4MDczMzU1MDM0JnJvbGU9cHVibGlzaGVyJmV4cGlyZV90aW1lPTE0NjUwMTYxNDA='
    end

  end
