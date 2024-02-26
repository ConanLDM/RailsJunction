class City < ApplicationRecord
  has_many :junctions

  # belongs_to :country

  validates :name, presence: true
end
