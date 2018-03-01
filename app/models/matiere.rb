class Matiere < ApplicationRecord
	belongs_to :semester
	belongs_to :deust, dependent: :destroy
	has_many :posts 
	has_many :images
	has_many :pdfs

	has_attached_file :image, styles: { large: "600x600>", medium: "500x500>", thumb: "100x100#" }, 
		:path => ":rails_root/public/system/:matiere/:id/:style/:filename",
    	:url => "/system/:matiere/:id/:style/:filename"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  	validates_attachment_size :image, :less_than => 5.megabytes
end
