class CreateDiseases < ActiveRecord::Migration[5.1]
  def change
    create_table :diseases do |t|

      t.timestamps
    end
  end
end
