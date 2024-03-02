# frozen_string_literal: true

class AddLocationToJunctions < ActiveRecord::Migration[7.1]
  def change
    add_column :junctions, :location, :string
  end
end
