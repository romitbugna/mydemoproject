class UserMailer < ApplicationMailer

  def welcome_email(user)
    # @greeting = "Hi"
	@user = user
    mail to: user.email, subject: "Welcome to Bus Booking"
  end
 
end
