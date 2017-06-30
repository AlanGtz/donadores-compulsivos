class ContactsController < ApplicationController
  def new
  end

  def create
    @contact = Contact.new(contact_params)
 
    if @contact.save
      redirect_to new_contact_path
      flash[:success] = 'Gracias por escribir a Donadores Compulsivos, te contactaremos pronto.'
    else
      flash.now[:error] = 'Por favor, revisa que todos los campos sean llenados correctamente.'
      render 'contacts/new'
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name,:subject,:phone,:email,:message)
    end
end
