require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AngularActionCableRailsTemplate
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set up cors to allow JS to transmit from any origin
    config.middleware.insert_before 0, "Rack::Cors" do
      allow do

        origins '*' # Allow all origins
        resource '*', :headers => :any, :methods => [:post, :get, :patch, :delete]
      end
    end

  end
end
