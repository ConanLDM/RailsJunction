class Crossroads::RoadsController < ApplicationController
  def new
    @crossroad = Crossroad.new
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end

  def create
  end
end
