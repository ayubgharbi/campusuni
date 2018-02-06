class Image < ApplicationRecord
	belongs_to :deust
	belongs_to :semester 
	belongs_to :matiere
	belongs_to :post
	
	has_attached_file :image, styles: { large: "600x600>" }, 
		:path => ":rails_root/public/system/:image/:id/:style/:filename",
    	:url => "/system/:image/:id/:style/:filename"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
