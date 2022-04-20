class InstructorsController < ApplicationController
  def index
      @feedbacks = Feedback.all
  end

  def new
      @feedbacks = Feedback.all
      @presentation = Presentation.find(params[:presentation_id])
  end

  def update
    @presentation = Presentation.find(params[:id])

    if @presentation.update_attributes(param[:form])
      redirect_to posts_path, :notice => 'Students grades have been updated'
    else
      render 'edit'
    end
end
  
end