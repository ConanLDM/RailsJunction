class AddCityIdToCrossroads < ActiveRecord::Migration[7.1]
  def change
    add_column :crossroads, :city_id, :integer
  end
end
