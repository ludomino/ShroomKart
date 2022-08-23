class AddColumnAtStartDateBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :start_dates, :date
  end
end
