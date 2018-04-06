class CreateUsereventrecords < ActiveRecord::Migration[5.1]
  def change
    create_table :usereventrecords do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
