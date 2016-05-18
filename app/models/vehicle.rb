class Vehicle < ActiveRecord::Base
	belongs_to :user

	validates :colour, format: { with: /[a-zA-Z]+/, message: 'Invalid. Only accept letters.' }
    validates :year, length: { is: 4, message: 'Invalid. Year must be 4 digits.'},
	    numericality: { greater_than_or_equal_to: 1900, 
	    	message: 'Invalid. Year must be greater than or equal to 1900.' }
	validates :license, :make, :presence => true
end
