module Feedy
  module FeedbackGiver

    def feedback_giver?
      false
    end

    def feedback_giver

      class_eval do
        has_many :feedbacks, as: :feedback_giver, class_name: "Feedy::Feedback", dependent: :destroy

        def self.feedback_giver?
          true
        end
      end

    end
  end
end
