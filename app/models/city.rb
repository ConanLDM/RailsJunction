# frozen_string_literal: true

class City < ApplicationRecord # rubocop:todo Style/Documentation
  has_many :junctions, dependent: :destroy
  has_many :crossroads, dependent: :destroy

  # belongs_to :country

  validates :name, presence: true
end
