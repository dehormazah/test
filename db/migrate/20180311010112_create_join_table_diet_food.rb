class CreateJoinTableDietFood < ActiveRecord::Migration[5.1]
  def change
    create_join_table :diets, :foods do |t|
       t.index [:diet_id, :food_id]
      # t.index [:food_id, :diet_id]
    end
  end
end
