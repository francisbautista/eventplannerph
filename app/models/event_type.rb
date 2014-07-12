# == Schema Information
#
# Table name: event_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class EventType < ActiveRecord::Base
end
