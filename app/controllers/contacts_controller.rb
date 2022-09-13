class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.request = request

    # if @contact.deliver
    #   flash.now[:success] = 'Message sent!'
    #   # render partial: 'thanks'
    # else
    #   flash.now[:alert] = 'Please review the field(s) with error(s)'
    #   render 'pages/home'
    # end

    respond_to do |format|
      if @contact.deliver
        format.html { redirect_to root_path }
        format.text { render partial: "contacts/thanks", formats: [:html] }
      end
    end

  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
