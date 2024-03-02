# frozen_string_literal: true

class CreateJunctions < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    create_table :junctions do |t|
      t.string :name
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
