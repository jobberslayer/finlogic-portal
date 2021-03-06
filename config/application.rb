require_relative 'boot'

require 'rails/all'
require './lib/string'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Portal
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.enable_dependency_loading = true
    config.eager_load_paths << Rails.root.join('lib')
    MYCONFIG = YAML.load_file("#{Rails.root.to_s}/config/config.yml")[Rails.env]
  end
end
