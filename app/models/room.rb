class Room < ActiveRecord::Base
    
CLASSIFICATION = ["Room","Ballroom","Hall",
        "Garden","Auditorium", "Ampitheater",
        "Gallery", "Covered Courts","Field"]

    validates :name, presence: true
    validates :classification, presence: true, inclusion: { in: CLASSIFICATION}
    validates :capacity, numericality: { only_integer: true }

end
