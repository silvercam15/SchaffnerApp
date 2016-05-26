class Photo < ActiveRecord::Base
  attr_accessible :image_file_name, :image_content_type, :image_file_size
  belongs_to :accommodation
  has_attached_file :image,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>" }
end