class Post < ApplicationRecord
  belongs_to :junction

  validates :junction, length: { maximum: 80 }, presence: true
end
