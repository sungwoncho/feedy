require "feedy/engine"
require "active_support"

module Feedy

  mattr_accessor :user_class, :current_user_helper, :anonymous_feedback

  class << self

    def extend_user_class!
      Feedy.user_class.class_eval do
        has_many :feedbacks, as: :author, class_name: "Feedy::Feedback", dependent: :destroy
      end
    end

    def user_class
      Object.const_get(@@user_class)
    end

    def current_user_helper
      @@current_user_helper || :current_user
    end

    def anonymous_feedback
      @@anonymous_feedback || false
    end
  end
end

ActiveSupport.on_load(:active_record) do
  Feedy.extend_user_class! if Feedy.user_class
end
