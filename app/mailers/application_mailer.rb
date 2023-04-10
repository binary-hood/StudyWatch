class ApplicationMailer < ActionMailer::Base
  default to: "info@calorietrack.com", from: 'info@calorietrack.com'
  layout 'mailer'
end
