class ContactMailer < ApplicationMailer
  default from: 'ahgv1195@gmail.com'
 
  def mailer(name, city, email)
  	@name = name
  	@city = city
  	@email = email
    mail(to: email, subject: 'Welcome to My Awesome Site')
  end
end
