class JunctionsController < ApplicationController
  def create
    @junction = Junction.new(junction_params)

    if @junction.save
      redirect_to junctions_path, notice: 'Junction was successfully created.'
    else
      render :new
    end
  end

  def index
    @junctions = Junction.all
  end

  private

  def junction_params
    params.require(:junction).permit(:name, :location)
  end
end
