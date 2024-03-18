# frozen_string_literal: true

class Junction < ApplicationRecord # rubocop:todo Style/Documentation
  broadcasts_refreshes
  belongs_to :city
  has_many :posts

  attribute :junction
  attribute :location
end
