class CreateMultipleTables < ActiveRecord::Migration[5.1]
  def self.up
     create_table :users_tip_diets, :id => false do |t|
       t.integer :user_id
       t.integer :achievement_id
     end
     create_table :users_plans, :id => false do |t|
       t.integer :user_id
       t.integer :plan_id
     end
     create_table :users_tip_activities, :id => false do |t|
       t.integer :user_id
       t.integer :tipactivity_id
     end
     create_table :users_groups, :id => false do |t|
       t.integer :user_id
       t.integer :group_id
     end
     create_table :users_events, :id => false do |t|
       t.integer :user_id
       t.integer :event_id
     end
     create_table :users_diets, :id => false do |t|
       t.integer :user_id
       t.integer :diet_id
     end
     create_table :diets_foods, :id => false do |t|
       t.integer :diet_id
       t.integer :food_id
     end
     create_table :plans_physical_activities, :id => false do |t|
       t.integer :plan_id
       t.integer :phyactivity_id
     end
  end
end
