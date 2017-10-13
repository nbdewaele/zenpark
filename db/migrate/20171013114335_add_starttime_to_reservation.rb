class AddStarttimeToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :start_time, :datetime
  end
end
