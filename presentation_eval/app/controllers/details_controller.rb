class DetailsController < ApplicationController
  def index
    @presentation = Presentation.find(params[:id])
  end
  
  def show
  end

  def instructor
  end

  def feedback
  end

  def student
  end
end
