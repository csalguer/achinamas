class LandingsController < ApplicationController
  before_action :get_user

  def index

  end

  def about

  end

  def privacy
  end

  def terms
  end

  def mission

  end

  def history

  end

  private
    def get_user
      @user = current_user
    end
end
