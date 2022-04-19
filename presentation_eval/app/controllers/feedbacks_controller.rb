class FeedbacksController < ApplicationController
    def index
        @feedbacks = Feedback.all
    end
    def show
        @feedback = Feedbacks.find(params[:id])
        render "details/index"
    end
    def new
        @feedback = Feedback.new
        @presentation_id = params[:presentation_id]
    end
    def create
        @feedback = Feedback.new(feedback_params)
    
        if @feedback.save
          redirect_to "/"
        else
          render :new, status: :unprocessable_entity
        end
      end

      private
      def feedback_params
        params.require(:feedback).permit(:score, :comments, :presentation_id)
      end
end