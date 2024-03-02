# frozen_string_literal: true

class PagesController < ApplicationController # rubocop:todo Style/Documentation
  def home
    @city = City.find_by(name: 'Metropolis')
  end
end
