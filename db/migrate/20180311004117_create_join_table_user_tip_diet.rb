class CreateJoinTableUserTipDiet < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :tipdiets do |t|
       t.index [:user_id, :tipdiet_id]
      # t.index [:tipdiet_id, :user_id]
    end
  end
end
