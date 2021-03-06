class Post < ApplicationRecord
	belongs_to :deust, dependent: :destroy
	belongs_to :matiere , dependent: :destroy
	belongs_to :category
	has_many :pdfs
	has_many :images

	def to_param
    	"#{id} #{name}".parameterize
  	end

  	def self.search(name)
	  if name
	    where('name LIKE ?', "%#{name}%").order('id DESC')
	  else
	    order('id DESC') 
	  end
	end
end
