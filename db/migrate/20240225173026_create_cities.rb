# frozen_string_literal: true

class CreateCities < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :population

      t.timestamps
    end
  end
end
