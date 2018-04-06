class CreateEventplacerecords < ActiveRecord::Migration[5.1]
  def change
    create_table :eventplacerecords do |t|
      t.integer :event_id
      t.integer :place_id

      t.timestamps
    end
  end
end
