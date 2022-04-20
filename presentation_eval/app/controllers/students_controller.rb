class StudentsController < ApplicationController
  def index
      @feedbacks = Feedback.all
  end

  def show
      @feedbacks = Feedback.all
  end

  def new
      @feedbacks = Feedback.all
      @presentation = Presentation.find(params[:presentation_id])
  end
  
  def update
      @presentation = Presentation.find(params[:id])
  
      if @presentation.update(params[:presentation].permit(:presentation_name))
        redirect_to posts_path, :notice => 'Presentation\'s name have been updated'
      else
        render 'edit'
      end
  end
end