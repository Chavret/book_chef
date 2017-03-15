class RemoveConfirmedFromBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :confirmed, :boolean
  end
end
