class HomeController < ApplicationController
  # The controller for home and contact and
  def home
  end

  def contact
  end
  # validating the fields
  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]
    # checking if the email is blank and correct if correct then deliver_now
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    else
      ContactMailer.contact_email(email,name,telephone,message).deliver_now
      flash[:notice] = I18n.t("home.request_contact.email_sent")
    end
    # redirecting to home page after the form submitted
    redirect_to home_home_path
  end

end
