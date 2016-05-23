class PreferencesController < ApplicationController
  
  def new
  	@preference = Preference.new
  end

  def show
  	@preference = Preference.new(params[:id]);
  end

  

end
