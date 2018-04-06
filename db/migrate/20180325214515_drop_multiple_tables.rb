class DropMultipleTables < ActiveRecord::Migration[5.1]
  def up
  
   drop_table :diets_foods
   drop_table :plans_physical_activities
   drop_table :users_comments
   drop_table :users_diets
   drop_table :users_events
   drop_table :users_groups
   drop_table :users_plans
   drop_table :users_tip_activities
   drop_table :users_tip_diets
 end

 def down
   raise ActiveRecord::IrreversibleMigration
 end
end
