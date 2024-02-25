class PagesController < ApplicationController
  def home
    @city = City.find_by(name: 'Metropolis')
  end
end
