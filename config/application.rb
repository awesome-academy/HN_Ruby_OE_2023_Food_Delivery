require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsTutorial
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    # config/application.rb
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.available_locales = [:en, :vi]
    config.i18n.default_locale = :vi
    config.time_zone = 'Asia/Ho_Chi_Minh'
    config.active_record.default_timezone = :local
    config.active_storage.variant_processor = :mini_magick
    config.middleware.use I18n::JS::Middleware
    config.action_mailer.default_url_options = {host: "localhost", port: 3000}
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
