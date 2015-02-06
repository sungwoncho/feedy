module Feedy
  module FeedbacksHelper
    def feedback_input
      render 'feedy/feedbacks/form'

      # content_tag :div, class: 'feedback-toggle' do
      #   'Feedback'
      #
      #   content_tag :div do
      #     'yo'
      #   end
      # end
    end
  end
end
