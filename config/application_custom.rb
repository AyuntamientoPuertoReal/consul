module Consul
  class Application < Rails::Application
    config.i18n.default_locale = :es
    # config.i18n.load_path += Dir[Rails.root.join('config', 'locales', 'custom', '*.{rb,yml}')]
  end
end
