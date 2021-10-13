class CatfactMailerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    booking = args[0]
    UserMailer.welcome_email(@booking).deliver_now
  end
end
