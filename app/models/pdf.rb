class Pdf < ApplicationRecord
	belongs_to :deust
	belongs_to :semester 
	belongs_to :matiere
	belongs_to :post
end
