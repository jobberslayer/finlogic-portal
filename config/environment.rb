# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

CONFIG = YAML.load_file("#{Rails.root.to_s}/config/config.yml")[Rails.env]

Rails.application.configure do

  config.action_mailer.delivery_method = :smtp
  # SMTP settings for gmail
  config.action_mailer.smtp_settings = {
   :address              => "smtp.gmail.com",
   :port                 => 587,
   :user_name            => CONFIG['gmail_username'],
   :password             => CONFIG['gmail_password'],
   :authentication       => "plain",
  :enable_starttls_auto => true
  }

  Rails.application.routes.default_url_options[:host] = CONFIG['hostname'] 
end