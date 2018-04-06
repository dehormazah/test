class CreateUsertipdietrecords < ActiveRecord::Migration[5.1]
  def change
    create_table :usertipdietrecords do |t|
      t.integer :user_id
      t.integer :tipdiet_id

      t.timestamps
    end
  end
end
