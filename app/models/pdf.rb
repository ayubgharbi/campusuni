class Pdf < ApplicationRecord
	belongs_to :deust, dependent: :destroy
	belongs_to :matiere, dependent: :destroy
	belongs_to :post, dependent: :destroy
end
