# == Schema Information
#
# Table name: venues
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  address         :string(255)
#  classification  :string(255)
#  capacity        :string(255)
#  is_featured     :boolean
#  location        :text
#  environment     :text
#  comments        :text
#  rates           :text
#  contact_persons :text
#  contact_numbers :text
#  status          :boolean
#  booking_count   :integer
#  caterers        :text
#  policy          :text
#  is_booked       :boolean
#  freeroom_count  :integer
#  email           :string(255)
#  user_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Venue < ActiveRecord::Base

  # Model Relations-----------------#
  belongs_to :supplier
  # has_many :assets, as: :uploadable

  # Venue Classification Types:
  # Pull validations from this method
  CLASSIFICATION = ["Bar", "Restaurant", "Hotel",
                    "Farm/Hacienda", "Garden",
                    "Church","Ballroom", "Gallery",
                    "Other"]

  validates :name, presence: true
  validates :email, presence: true
  validates :address, presence: true
  # validates :classification, presence: true, inclusion: { in: CLASSIFICATION}
  validates :capacity, presence: true
  validates :location, presence: true
  validates :environment, presence: true
  # validates :comments, presence: true
  # validates :amenities_id, presence: true
  validates :rates, presence: true
  validates :contact_persons, presence: true
  validates :contact_numbers, presence: true
  # validates :status, presence: true
  # validates :caterers, presence: true
  validates :policy, presence: true

end
