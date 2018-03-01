class Image < ApplicationRecord
	belongs_to :deust, dependent: :destroy
	belongs_to :matiere, dependent: :destroy
	belongs_to :post, dependent: :destroy
	
	has_attached_file :image, styles: { large: "600x600>", medium: "500x500>", thumb: "100x100#" }, 
		:path => ":rails_root/public/system/:image/:id/:style/:filename",
    	:url => "/system/:image/:id/:style/:filename"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  	validates_attachment_size :image, :less_than => 5.megabytes
end
