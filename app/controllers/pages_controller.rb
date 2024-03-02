# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @city = City.find_by(name: 'Metropolis')
  end
end
