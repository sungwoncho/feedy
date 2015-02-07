module Feedy
  class Feedback < ActiveRecord::Base
    belongs_to :author, class_name: Feedy.user_class
  end
end
