class ContactMailer < ApplicationMailer
  default from: 'ahgv1195@gmail.com'
  default from_name: 'Donadores Compulsivos'

  def self.contact_request(name, phone, email, message)
    @name = name
    @phone = phone
    @email = email
    @message = message

    emails = ['ahgv1195@gmail.com', @email]
    
    emails.each do |name, phone, email, message|
      contact(name, phone, email, message).deliver_now      
    end
  end

  def contact(name, phone, email, message)
    @name = name
    @phone = phone
    @email = email
    @message = message
    mail(to: @email,
         subject: 'We\'ll contact you soon.',
         template_path: 'contact_mailer',
         template_name: 'contact')
  end

  def donate_blood(name, city, email)
    @name = name
    @city = city
    @email = email
    mail(to: email,
         subject: 'Thank you vato.',
         template_path: 'contact_mailer',
         template_name: 'donate_blood')
  end

  def find_blood(is_for, bloodtype, city, phone, hospital, address, hours, email)
  	@is_for = is_for
  	@bloodtype = bloodtype
  	@city = city
  	@phone = phone
  	@hospital = hospital
  	@address = address
  	@hours = hours
  	@email = email
    mail(to: email,
         subject: 'We\'ll find a way to keep you away from the grim reaper',
         template_path: 'contact_mailer',
         template_name: 'find_blood')
  end
end
