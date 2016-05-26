class Message < ActiveRecord::Base

	has_one :image
	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}, :path => ":rails_root/public/my_addr/:user_id/:style/:basename.:extension",
  :url => "/my_addr/:user_id/:style/:basename.:extension"

	belongs_to :user
	has_many :comments
	validates_presence_of :title



	
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
