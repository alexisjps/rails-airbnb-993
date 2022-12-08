class AddForeignKeyToBooking < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :flat, foreign_key: true
    add_reference :bookings, :user, foreign_key: true
  end
end
