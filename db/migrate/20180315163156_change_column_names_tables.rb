class ChangeColumnNamesTables < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :users_tip_diets, :achievement_id, :tipdiet_id

  end
end
