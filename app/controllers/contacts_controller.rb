class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = 'Successfully Posted!! Thanks.'
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @contact = Contact.new
  end

  def contact_params
    params.require(:contact)
          .permit(:user_name, :email, :message)

<<<<<<< HEAD:app/controllers/contacts_controller.rb
end
=======
  end
>>>>>>> 74b66ed9a430070f96230dd4b0b4b9470dc44727:app/controllers/contacts_controller.rb
end
