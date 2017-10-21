class AddEndtimeToReservation < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :end_time, :datetime
  end
end
