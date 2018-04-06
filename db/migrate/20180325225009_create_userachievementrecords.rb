class CreateUserachievementrecords < ActiveRecord::Migration[5.1]
  def change
    create_table :userachievementrecords do |t|
      t.integer :user_id
      t.integer :achievement_id

      t.timestamps
    end
  end
end
