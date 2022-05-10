class Beer < ApplicationRecord
	validates :beer_type, presence: true
	validates :stock, presence: true

	def to_param
	    beer_type
	end
end
