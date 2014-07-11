class Venue < ActiveRecord::Base

  # Model Relations-----------------#
  belongs_to :supplier
  has_many :assets, as: :uploadable

  # Venue Classification Types:
  # Pull validations from this method
  CLASSIFICATION = ["Bar", "Restaurant", "Hotel",
                    "Farm/Hacienda", "Garden",
                    "Church","Ballroom", "Gallery",
                    "Other"]

  validates :name, presence: true
  validates :email, presence: true
  validates :address, presence: true
  validates :classification, presence: true, inclusion: { in: CLASSIFICATION}
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
