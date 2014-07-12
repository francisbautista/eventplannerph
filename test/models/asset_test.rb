# == Schema Information
#
# Table name: assets
#
#  id                 :integer          not null, primary key
#  uploadable_id      :integer
#  uploadable_type    :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

require 'test_helper'

class AssetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
