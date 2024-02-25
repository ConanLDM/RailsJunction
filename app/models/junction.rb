class Junction < ApplicationRecord
  belongs_to :city

  attribute :location
end
