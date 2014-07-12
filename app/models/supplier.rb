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

class Supplier < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Model Relations-----------------#
  # As of version 0.01 Supplier can have many venues
  has_many :venues
end
