# == Schema Information
#
# Table name: amenities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Amenity < ActiveRecord::Base
end
