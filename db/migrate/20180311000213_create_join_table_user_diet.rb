class CreateJoinTableUserDiet < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :diets do |t|
       t.index [:user_id, :diet_id]
      # t.index [:diet_id, :user_id]
    end
  end
end
