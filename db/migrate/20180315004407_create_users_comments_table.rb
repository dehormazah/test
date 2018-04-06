class CreateUsersCommentsTable < ActiveRecord::Migration[5.1]
  def self.up
     create_table :userscomments, :id => false do |t|
       t.integer :user_id
       t.integer :achievement_id
     end
  end
  def self.down
     drop_table :userscomments
  end
end
