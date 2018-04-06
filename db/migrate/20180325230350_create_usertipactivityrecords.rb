class CreateUsertipactivityrecords < ActiveRecord::Migration[5.1]
  def change
    create_table :usertipactivityrecords do |t|
      t.integer :user_id
      t.integer :tipactivity_id

      t.timestamps
    end
  end
end
