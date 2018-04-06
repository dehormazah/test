class AddPhyactivityToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_reference :places, :phyactivity, foreign_key: true
  end
end
