# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    create_table :users, &:timestamps
  end
end
