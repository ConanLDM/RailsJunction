# frozen_string_literal: true

class AddNameAndEmailToUsers < ActiveRecord::Migration[7.1] # rubocop:todo Style/Documentation
  def change
    add_column :users, :name, :string
    add_column :users, :email, :string
  end
end
