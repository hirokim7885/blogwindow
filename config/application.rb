require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Blogwindow
  class Application < Rails::Application
    config.load_defaults 6.1
    config.active_storage.variant_processor = :vips

    config.time_zone = "Tokyo"
    config.i18n.load_path += Dir[Rails.root.join("config", "locales", "**", "*.{rb,yml}").to_s]
    config.i18n.default_locale = :ja
  end
end
