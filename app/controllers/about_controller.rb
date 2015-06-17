class AboutController < ApplicationController
  before_action :logged_in
  def logged_in
    if user_signed_in?
      @user = current_user
    end
  end

  def index
  end
end
