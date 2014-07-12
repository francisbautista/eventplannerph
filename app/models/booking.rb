# == Schema Information
#
# Table name: bookings
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  date_reserved :date
#  starts_at     :datetime
#  ends_at       :datetime
#  all_day       :string(255)
#  status        :string(255)
#  message       :string(255)
#  expiry_date   :datetime
#  is_viewed     :boolean
#  all_reserved  :boolean
#  venue_id      :integer
#  room_id       :integer
#  user_id       :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Booking < ActiveRecord::Base
end
