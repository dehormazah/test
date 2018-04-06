class RemoveUserIdFromAchievements < ActiveRecord::Migration[5.1]
  def change
    remove_column :achievements, :user_id, :integer
  end
end
