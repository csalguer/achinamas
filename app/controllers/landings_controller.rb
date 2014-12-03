class LandingsController < ApplicationController
  def index
  	@user = current_user
  end

  def about
  	@user = current_user
  	
  end

  def privacy
  	@user = current_user
  end

  def terms
  	@user = current_user
  end
end
