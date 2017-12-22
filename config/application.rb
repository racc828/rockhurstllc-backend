require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module RockhurstLogin
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.middleware.insert_before 0, Rack::Cors do
            allow do
           origins '*'
           resource '*', :headers => :any, :methods => [:get, :post, :delete, :patch, :options]
         end
       end
  end
end
