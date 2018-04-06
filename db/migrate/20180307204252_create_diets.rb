class CreateDiets < ActiveRecord::Migration[5.1]
  def change
    create_table :diets do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
