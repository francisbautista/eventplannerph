class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :title
      t.date :date_reserved
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :all_day
      t.string :status
      t.string :message
      t.datetime :expiry_date
      t.boolean :is_viewed
      t.boolean :all_reserved
      t.integer :venue_id
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end
  end
end
