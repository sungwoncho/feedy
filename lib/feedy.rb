require "feedy/engine"
require "active_support"
require "jquery-rails"

module Feedy
  extend ActiveSupport::Autoload

  autoload :FeedbackGiver
end

ActiveSupport.on_load(:active_record) do
  extend Feedy::FeedbackGiver
end
