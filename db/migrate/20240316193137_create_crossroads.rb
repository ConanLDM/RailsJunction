class CreateCrossroads < ActiveRecord::Migration[7.1]
  def change
    create_table :crossroads do |t|

      t.timestamps
    end
  end
end
