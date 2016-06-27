class Product < ActiveRecord::Base
	has_many :orders
	has_many :comments
<<<<<<< HEAD
=======
	
	def average_rating
		comments.average(:rating).to_f
	end
>>>>>>> comment
end