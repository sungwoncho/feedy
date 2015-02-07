module Feedy
  class ApplicationController < ActionController::Base
    def current_user
      Feedy.current_user_helper
    end
  end
end
