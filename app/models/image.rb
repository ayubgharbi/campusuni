class Image < ApplicationRecord
	belongs_to :deust, dependent: :destroy
	belongs_to :matiere, dependent: :destroy
	belongs_to :post, dependent: :destroy
	
	has_attached_file :image, styles: { large: "600x600>" }, 
		:path => ":rails_root/public/system/:image/:id/:style/:filename",
    	:url => "/system/:image/:id/:style/:filename"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
