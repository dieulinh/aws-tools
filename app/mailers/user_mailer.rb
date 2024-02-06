class UserMailer < ApplicationMailer
  def send_contact_form
    mail(to: ENV['NOTIFIED_ADMIN_EMAIL'], subject: "Contact message from me")
  end
end
