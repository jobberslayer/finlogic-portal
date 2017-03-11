# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do

  config.action_mailer.delivery_method = :smtp
  # SMTP settings for gmail
  config.action_mailer.smtp_settings = {
   :address              => "smtp.gmail.com",
   :port                 => 587,
   :user_name            => MYCONFIG['gmail_username'],
   :password             => MYCONFIG['gmail_password'],
   :authentication       => "plain",
  :enable_starttls_auto => true
  }

  Rails.application.routes.default_url_options[:host] = MYCONFIG['hostname'] 
end