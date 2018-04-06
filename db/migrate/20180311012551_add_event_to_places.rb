class AddEventToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_reference :places, :event, foreign_key: true
  end
end
