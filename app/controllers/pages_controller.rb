class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @contact = Contact.new
  end
end
