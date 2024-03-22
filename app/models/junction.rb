# frozen_string_literal: true

class Junction < ApplicationRecord # rubocop:todo Style/Documentation
  include Geocoder

  broadcasts_refreshes
  belongs_to :city
  belongs_to :user

  has_many :posts

  attribute :junction
  attribute :location
  attribute :address

  validates :junction, length: { maximum: 80 }, presence: true

  geocoded_by :address
end
