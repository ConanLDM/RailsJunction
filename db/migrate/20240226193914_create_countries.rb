# frozen_string_literal: true

class CreateCountries < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    create_table :countries do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
