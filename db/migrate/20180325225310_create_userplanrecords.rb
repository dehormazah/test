class CreateUserplanrecords < ActiveRecord::Migration[5.1]
  def change
    create_table :userplanrecords do |t|
      t.integer :user_id
      t.integer :plan_id

      t.timestamps
    end
  end
end
