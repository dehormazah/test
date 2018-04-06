class CreateJoinTablePlanPhyActivity < ActiveRecord::Migration[5.1]
  def change
    create_join_table :plans, :phyactivities do |t|
      t.index [:plan_id, :phyactivity_id]
      # t.index [:phyactivity_id, :plan_id]
    end
  end
end
