class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.new_booking.subject
  #
  def new_post
    # post = Post.find(post_id)
    # @post = Post.first
    booking = Booking.first
    attachments["booking_#{booking.id}.pdf"] = WickedPdf.new.pdf_from_string(
      render_to_string(template: 'bookings/show.html.erb', layout: 'pdf.html.erb', pdf: 'filename')
    )
    mail to: "to@example.org"
  end
end
