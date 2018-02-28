class Semester < ApplicationRecord
	belongs_to :deust
	has_many :matieres
	has_many :posts
	has_many :images
	has_many :pdfs
end
