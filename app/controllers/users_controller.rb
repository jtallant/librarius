class UsersController < ApplicationController
	layout "dashboard"
  def dashboard
    if !user_signed_in?
      redirect_to user_session_path
    end
  end

  def my_books
  end

  def my_clubs
  end

  def my_stats
  end
end