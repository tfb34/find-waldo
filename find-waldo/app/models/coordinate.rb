class Coordinate < ApplicationRecord
	belongs_to :character
	validates :col, presence: true, numericality: { only_integer: true, 
                                                    greater_than_or_equal_to: 0}
                                                    
	validates :row, presence: true, numericality: { only_integer: true,
                                                    greater_than_or_equal_to: 0}


end
