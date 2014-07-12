# == Schema Information
#
# Table name: suppliers
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  username               :string(255)
#  company_name           :string(255)
#  address                :string(255)
#  first_name             :string(255)
#  last_name              :string(255)
#  mobile                 :integer
#  telephone              :integer
#  profile_picture        :text
#  birthday               :date
#  venue_id               :integer
#  created_at             :datetime
#  updated_at             :datetime
#

require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
