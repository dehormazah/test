class ChangeTypeOfAveragePriceInFoods < ActiveRecord::Migration[5.1]
  def change
      change_column :foods, :averageprice, :integer
  end
end
