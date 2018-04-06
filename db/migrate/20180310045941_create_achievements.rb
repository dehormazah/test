class CreateAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements do |t|
      t.string :name
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
