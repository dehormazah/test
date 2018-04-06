class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :type
      t.text :description
      t.integer :num_members

      t.timestamps
    end
  end
end
