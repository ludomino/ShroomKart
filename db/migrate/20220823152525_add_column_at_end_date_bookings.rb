class AddColumnAtEndDateBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :end_dates, :date
  end
end
