class CreatePlanphyactivityrecords < ActiveRecord::Migration[5.1]
  def change
    create_table :planphyactivityrecords do |t|
      t.integer :plan_id
      t.integer :phyactivity

      t.timestamps
    end
  end
end
