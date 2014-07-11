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
