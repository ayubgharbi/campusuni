class Matiere < ApplicationRecord
	belongs_to :semester
	belongs_to :deust
	has_many :posts 
	has_many :images
	has_many :pdfs

	has_attached_file :image, styles: { large: "600x600>" }, 
		:path => ":rails_root/public/system/:image/:id/:style/:filename",
    	:url => "/system/:image/:id/:style/:filename"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
