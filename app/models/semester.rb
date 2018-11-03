class Semester < ApplicationRecord
	belongs_to :deust, dependent: :destroy
	has_many :matieres
end
