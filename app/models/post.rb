class Post < ApplicationRecord
	belongs_to :deust, dependent: :destroy
	belongs_to :matiere , dependent: :destroy
	belongs_to :category
	has_many :pdfs
	has_many :images

	def to_param
    	"#{id} #{name}".parameterize
  	end
end
