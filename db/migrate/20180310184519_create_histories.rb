class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.text :description
      t.float :weight
      t.integer :height
      t.datetime :start
      t.datetime :current_time
      t.integer :num_achievements
      t.integer :num_diets
      t.integer :num_physical_activities
      t.integer :num_groups
      t.integer :num_events
      t.string :level

      t.timestamps
    end
  end
end
