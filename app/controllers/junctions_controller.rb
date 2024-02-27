class JunctionsController < ApplicationController
  def create
    @junction = Junction.new(junction_params)
  end

  def index
    
  end

  private

  def junction_params
    params.require(:junction).permit(:name, :location)
  end
end
