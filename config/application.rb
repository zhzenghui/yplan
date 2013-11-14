require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'will_paginate'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Yplan
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :zh-CN
    
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
    
    
    config.secret_key = 'ee11cea31f0fc9fe279c5d9dc6149795a7a7d6ba7167779b04946ae1864966f747718104c0b72895f24e0ff3f870dec83a7f2e7b8f4497a302f64a845d59b6d2'
  end
end
