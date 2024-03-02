# frozen_string_literal: true

class Junction < ApplicationRecord
  belongs_to :city

  attribute :location
end
