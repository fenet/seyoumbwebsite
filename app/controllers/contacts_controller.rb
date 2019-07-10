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
  end

<<<<<<< HEAD
  end
=======

end

  end

>>>>>>> 6c171a0db294381a994e13220401519bee730b6f
