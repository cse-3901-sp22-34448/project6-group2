class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.all
  end

  def show
    @presentation = Presentation.find(params[:id])
    render "details/index"
  end

  def new 
    @presentation = Presentation.new
  end

  def update
    @presentation = Presentation.find(params[:id])

    if @presentation.update(params[:presentation].permit(:grade, :presentation_name))
      redirect_back(fallback_location: root_path)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def create
    @presentation = Presentation.new(presentation_params)

    if @presentation.save
      redirect_to @presentation
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def presentation_params
      params.require(:presentation).permit(:grade, :presentation_name, :student_name, :date)
    end
end
