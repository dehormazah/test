class CreateUserdietrecords < ActiveRecord::Migration[5.1]
  def change
    create_table :userdietrecords do |t|
      t.integer :user_id
      t.integer :diet_id

      t.timestamps
    end
  end
end
