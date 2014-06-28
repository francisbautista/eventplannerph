class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.boolean :is_booked
      t.text :classification
      t.integer :capacity
      t.integer :booking_id
      t.integer :venue_id
      t.text :amenities
      t.text :description

      t.timestamps
    end
  end
end
