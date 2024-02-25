class AddCityIdToJunctions < ActiveRecord::Migration[7.1]
  def change
    add_reference :junctions, :city, null: false, foreign_key: true
  end
end
