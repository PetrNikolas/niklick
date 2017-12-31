# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Specify your ActionMailer settings to point to SendGrid’s servers
ActionMailer::Base.smtp_settings = {
  :user_name => 'your_sendgrid_username',
  :password => 'your_sendgrid_password',
  :domain => 'yourdomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
