class HomeController < ApplicationController
  def index
    debugger
    UserMailer.send_contact_form.deliver
  end
end
