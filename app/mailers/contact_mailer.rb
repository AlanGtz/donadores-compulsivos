class ContactMailer < ApplicationMailer
  default from: 'info@donadorescompulsivos.org'

  default from_name: 'Donadores Compulsivos'

  def contact(contact)
    @contact = contact
    mail(to: 'ahgv1195@gmail.com',
         subject: 'Contacto',
         template_path: 'contact_mailer',
         template_name: 'contact')
  end

  def sponsor(sponsor)
    @sponsor = sponsor
    mail(to: 'ahgv1195@gmail.com',
         subject: 'Patrocinio',
         template_path: 'contact_mailer',
         template_name: 'sponsor')
  end
end
