class Deust < ApplicationRecord


	has_many :semesters
	has_many :matieres
	has_many :posts
	has_many :images
	has_many :pdfs
end
