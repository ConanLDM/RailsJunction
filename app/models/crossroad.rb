class Crossroad < ApplicationRecord
  broadcasts_refreshes

  belongs_to :city

end
