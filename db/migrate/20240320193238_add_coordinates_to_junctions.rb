class AddCoordinatesToJunctions < ActiveRecord::Migration[7.1]
  def change
    add_column :junctions, :latitude, :float
    add_column :junctions, :longitude, :float
  end
end
