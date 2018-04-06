class RemoveColumnsFromPlace < ActiveRecord::Migration[5.1]
  def change
    remove_column :places, :event_id, :integer
    remove_column :places, :phyactivity_id, :integer
  end
end
