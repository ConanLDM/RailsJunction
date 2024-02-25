class City < ApplicationRecord
  has_many :junctions

  belongs_to :country
end
