class ChangeTypeOfWeightInHistory < ActiveRecord::Migration[5.1]
  def change
      change_column :histories, :weight, :integer
  end
end
