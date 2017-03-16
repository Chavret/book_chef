class BookingMailer < ApplicationMailer

  def booking_validation(booking)
    @booking = booking
    mail(to: @booking.meal.user.email, subject: "New booking from #{@booking.user.first_name}!")
  end

  def booking_confirmation(booking)
    @booking = booking
    mail(to: @booking.user.email, subject: "Your booking for #{@booking.meal.name} is confirmed!")
  end

end
