class CreatePhyactivities < ActiveRecord::Migration[5.1]
  def change
    create_table :phyactivities do |t|
      t.string :name
      t.text :description
      t.string :duration
      t.string :required_elements

      t.timestamps
    end
  end
end
