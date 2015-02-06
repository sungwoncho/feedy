module Feedy
  class Engine < ::Rails::Engine
    isolate_namespace Feedy

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

    # Expose the engine's helper methods in the parent app
    config.before_initialize do
      ActiveSupport.on_load :action_controller do
        helper Feedy::Engine.helpers
      end
    end

  end
end
