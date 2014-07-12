class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :classification
      t.string :capacity
      t.boolean :is_featured
      t.text :location
      t.text :environment
      t.text :comments
      t.text :rates
      t.text :contact_persons
      t.text :contact_numbers
      t.boolean :status
      t.integer :booking_count
      t.text :caterers
      t.text :policy
      t.boolean :is_booked
      t.integer :freeroom_count
      t.string :email
      t.integer :supplier_id

      t.timestamps
    end
  end
end
