class RenameColumnNumPhyActivitiesInHistory < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :histories, :num_physical_activities, :num_plans
  end
end
