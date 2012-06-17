require 'amazon/ecs'

class UsersController < ApplicationController
	layout "full_width"
  def dashboard
    if !user_signed_in?
      redirect_to user_session_path
    end
  end

  # def my_books
  # end

  # def my_clubs
  # end

  # def my_stats
  # end

  def search_books
    @title = params[:title]
    @res = Amazon::Ecs.item_search("#{@title}", :response_group => 'Images,ItemAttributes')
  end
end