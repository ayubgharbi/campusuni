class Semester < ApplicationRecord

	belongs_to :deusts
	has_many :matieres
	has_many :posts
	has_many :images
	has_many :pdfs
end
