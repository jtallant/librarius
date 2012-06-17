class PagesController < ApplicationController
  def home
    render :layout => "full_width"
  end

  def about
  end

  def contact
  end

  def privacy
  end

  def terms_of_service
    render :layout => "full_width"
  end

  def jobs
  end

  def clubs
  end
end