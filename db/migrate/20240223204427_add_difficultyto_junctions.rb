# frozen_string_literal: true

class AddDifficultytoJunctions < ActiveRecord::Migration[7.1]
  def change
    add_column :junctions, :difficulty, :string
  end
end
