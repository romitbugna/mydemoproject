class UserMailer < ApplicationMailer

  def welcome_email(booking)
	  @user = User.find(booking.user_id)
    mail to: @user.email, subject: "Welcome to Bus Booking"
  end
 
end
