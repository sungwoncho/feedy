module Feedy
  class Feedback < ActiveRecord::Base
    belongs_to :author, polymorphic: true
  end
end
