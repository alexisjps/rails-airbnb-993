class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :startbook_time
      t.date :endbook_time

      t.timestamps
    end
  end
end
