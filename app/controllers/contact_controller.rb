class ContactController < ApplicationController
  def contact_us
  end

  def contact
  	name = params[:person][:name]
  	phone = params[:person][:phone]
  	email = params[:person][:email]
  	message = params[:person][:message]
  	ContactMailer.contact(name, phone, email, message)
  	redirect_to home_path, alert: 'Email enviado'
  end
end
