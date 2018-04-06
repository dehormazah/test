class CreatePlacephyactivityrecords < ActiveRecord::Migration[5.1]
  def change
    create_table :placephyactivityrecords do |t|
      t.integer :place_id
      t.integer :phyactivity_id

      t.timestamps
    end
  end
end
