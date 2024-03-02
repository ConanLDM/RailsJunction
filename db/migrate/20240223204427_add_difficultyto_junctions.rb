# frozen_string_literal: true

class AddDifficultytoJunctions < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_column :junctions, :difficulty, :string
  end
end
