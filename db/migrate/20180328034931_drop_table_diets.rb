class DropTableDiets < ActiveRecord::Migration[5.1]
  def up

   drop_table :diets
 end

 def down
   raise ActiveRecord::IrreversibleMigration
 end
end
