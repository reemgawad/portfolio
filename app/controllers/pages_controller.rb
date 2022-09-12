class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @contact = Contact.new
  end

  def about
  end

  def brunchtime
  end

  def ruby_games
  end

  def contact
  end
end
