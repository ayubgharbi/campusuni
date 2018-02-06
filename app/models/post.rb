class Post < ApplicationRecord
	belongs_to :deust
	belongs_to :semester 
	belongs_to :matiere 
	belongs_to :category
	has_many :pdfs
	has_many :images
end
