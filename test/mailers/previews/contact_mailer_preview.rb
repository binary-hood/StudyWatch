# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

  def contact_email
    ContactMailer.contact_email("faseeh@me.com", "Faseeh Lodhi", "07383 088765", @message = "Hello There")
  end
end
