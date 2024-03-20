# frozen_string_literal: true

class Junction < ApplicationRecord # rubocop:todo Style/Documentation
  include Geocoder

  broadcasts_refreshes
  belongs_to :city
  has_many :posts

  attribute :junction
  attribute :location
  attribute :address

  geocoded_by :address
end
