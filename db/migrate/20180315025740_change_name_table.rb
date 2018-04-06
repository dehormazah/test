class ChangeNameTable < ActiveRecord::Migration[5.1]
  def change
  rename_table :userscomments, :users_comments
  end
end
