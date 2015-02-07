require_dependency "feedy/application_controller"

module Feedy
  class FeedbacksController < ApplicationController
    before_action :set_feedbacks, only: :index
    before_action :set_feedback, only: [:show, :destroy]

    def index
    end

    def show
    end

    def create
      if Feedy.anonymous_feedback
        @feedback = Feedback.new(feedback_params)
      else
        @feedback = current_user.feedbacks.new(feedback_params)
      end

      if @feedback.save
        respond_to do |format|
          format.js { head :created }
        end
      end
    end

    def destroy
      if @feedback.destroy
        head 204
      end
    end

    private
      def set_feedbacks
        @feedbacks = Feedback.all
      end

      def set_feedback
        @feedback = Feedback.find(params[:id])
      end

      def feedback_params
        params.require(:feedback).permit(:subject, :body)
      end
  end
end
