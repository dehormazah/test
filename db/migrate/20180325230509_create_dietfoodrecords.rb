class CreateDietfoodrecords < ActiveRecord::Migration[5.1]
  def change
    create_table :dietfoodrecords do |t|
      t.integer :diet_id
      t.integer :food_id

      t.timestamps
    end
  end
end
