class City < ApplicationRecord
  has_many :junctions, dependent: :destroy

  # belongs_to :country

  validates :name, presence: true
end
