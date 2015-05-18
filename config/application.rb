require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CompanionApp
  class Application < Rails::Application

    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
    config.assets.precompile += ['*.haml','*/*.haml']
    Rails.application.assets.register_engine('.haml', Tilt::HamlTemplate)

    config.active_record.raise_in_transactional_callbacks = true
  end
end
