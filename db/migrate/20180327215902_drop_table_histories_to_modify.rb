class DropTableHistoriesToModify < ActiveRecord::Migration[5.1]
  def up

   drop_table :histories
 end

 def down
   raise ActiveRecord::IrreversibleMigration
 end
end
