class CitiesController < ApplicationController
  def create
    @city = City.new(city_params)
  end

  def show
    @city = City.find(params[:id])
  end

  def index
    @cities = City.all
  end
end
