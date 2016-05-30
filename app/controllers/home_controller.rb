  class HomeController < ApplicationController
    protect_from_forgery :except => [:render_video]
    def index
    	@users = User.all
    	@user = current_user
  	@api_key = "45598132"
  	# @opentok = OpenTok::OpenTok.new(@api_key, 'ce4771d7c91a3f2e773ae76b1d6d9f6db5301e5e')
  	# @session = @opentok.create_session	
  	 @session_id = '2_MX40NTU5ODEzMn5-MTQ2NDYwMTY3NzI0N35TY1hTS1Z1SWdMYXFkaDdYeTlOdEx5T1h-fg'
      @token = 'T1==cGFydG5lcl9pZD00NTU5ODEzMiZzaWc9ODAzZWMxNmNlYmM3Mzc5NjAxMDI4NTRmNjNkZDY0NzIzNmIxMGNjMTpzZXNzaW9uX2lkPTJfTVg0ME5UVTVPREV6TW41LU1UUTJORFl3TVRZM056STBOMzVUWTFoVFMxWjFTV2RNWVhGa2FEZFllVGxPZEV4NVQxaC1mZyZjcmVhdGVfdGltZT0xNDY0NjAxNjk1Jm5vbmNlPTAuMDAzNDU0MTA3NzkxMTg1Mzc5JnJvbGU9cHVibGlzaGVyJmV4cGlyZV90aW1lPTE0NjQ2ODgwOTQ='
      end
      

    def render_video
      @api_key = "45592332"
      # @opentok = OpenTok::OpenTok.new(@api_key, 'ce4771d7c91a3f2e773ae76b1d6d9f6db5301e5e')
      # @session = @opentok.create_session  
      @session_id = '2_MX40NTU5MjMzMn5-MTQ2NDYwMDk4ODE0OX44bEV5WHNhUFg4SzJZMUlrUEsxK25EUmd-fg'
      @token = 'T1==cGFydG5lcl9pZD00NTU5MjMzMiZzaWc9NjU5MTI5Zjc3NTAwMWQ3N2RiMmI1YTMwOTUwMThkZTFkMDc2NGQ0NjpzZXNzaW9uX2lkPTJfTVg0ME5UVTVNak16TW41LU1UUTJORFl3TURrNE9ERTBPWDQ0YkVWNVdITmhVRmc0U3pKWk1VbHJVRXN4SzI1RVVtZC1mZyZjcmVhdGVfdGltZT0xNDY0NjAxMDExJm5vbmNlPTAuODc0MjY5ODc1OTMwNjIyMiZyb2xlPXB1Ymxpc2hlciZleHBpcmVfdGltZT0xNDY1MjA1ODA5'
      respond_to do |format|
            format.js
      end
    end

  end

