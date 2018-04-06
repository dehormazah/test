class CreateTipactivities < ActiveRecord::Migration[5.1]
  def change
    create_table :tipactivities do |t|
      t.text :description

      t.timestamps
    end
  end
end
