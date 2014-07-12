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

class Asset < ActiveRecord::Base
  attr_accessor :content, :photo

  # Model Relations-----------------#
  belongs_to :uploadable, polymorphic: true

  # Image Validations---------------#
  has_attached_file :photo, :styles => { :medium => "767x500#", :thumb => "100x100#",
 	:upload => "250x200#", :index => "300x200#" },
 	default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
