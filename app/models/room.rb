# == Schema Information
#
# Table name: rooms
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  is_booked      :boolean
#  classification :text
#  capacity       :integer
#  booking_id     :integer
#  venue_id       :integer
#  amenities      :text
#  description    :text
#  created_at     :datetime
#  updated_at     :datetime
#

class Room < ActiveRecord::Base

  # Model Relations-----------------#
  belongs_to :venue
  has_many :bookings
  has_many :assets, as: :uploadable

  CLASSIFICATION = ["Room","Ballroom","Hall",
      "Garden","Auditorium", "Ampitheater",
      "Gallery", "Covered Courts","Field"]

      validates :name, presence: true
      # Commented out for seeding
      validates :classification, presence: true, inclusion: { in: CLASSIFICATION}
      validates :capacity, numericality: { only_integer: true }

end
