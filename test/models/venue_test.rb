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

require 'test_helper'

class VenueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
