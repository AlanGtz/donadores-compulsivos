# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def sample_mail_preview
  	ContactMailer.mailer(@name, @city, @email)
  end
end
