module Feedy
  module ControllerRoutesFix
    def self.included(base)
      base.routes { Feedy::Engine.routes }
    end
  end
end
