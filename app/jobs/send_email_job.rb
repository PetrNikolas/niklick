class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(user)
    # Do something later
    @user = user
    UserNotifier.send_signup_email(@user).deliver
  end
end
