class ChangeColumnNameInPlanPhyactivityRecordsTable < ActiveRecord::Migration[5.1]
  def self.up
    rename_column :planphyactivityrecords, :phyactivity, :phyactivity_id

  end
end
