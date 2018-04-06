class CreateJoinTableUserTipactivity < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :tipactivities do |t|
       t.index [:user_id, :tipactivity_id]
      # t.index [:tipactivity_id, :user_id]
    end
  end
end
