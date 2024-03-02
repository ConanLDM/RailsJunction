# frozen_string_literal: true

class AddCityIdToJunctions < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_reference :junctions, :city, null: false, foreign_key: true
  end
end
