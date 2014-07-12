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

require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
