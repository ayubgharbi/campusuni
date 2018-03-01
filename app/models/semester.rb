class Semester < ApplicationRecord
	belongs_to :deusts, dependent: :destroy
	has_many :matieres
end
