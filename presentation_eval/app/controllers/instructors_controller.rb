class InstructorsController < ApplicationController
  def index
      @feedbacks = Feedback.all
  end

  def new
      @feedbacks = Feedback.all
      @presentation = Presentation.find(params[:presentation_id])
  end

  def update
    @presentation = Presentation.find(params[:presentation_id])

    if @presentation.update(params[:presentation].permit(:grade))
      redirect_to "/"
    else
      render :new, status: :unprocessable_entity
    end
  end
end