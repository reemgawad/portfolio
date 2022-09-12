class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message sent!'
    else
      flash.now[:alert] = 'Please review the field(s) with error(s)'
      render '/pages/home'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
