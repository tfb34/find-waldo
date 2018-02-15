class Coordinate < ApplicationRecord
	belongs_to :character
	validates :col, presence: true
	validates :row, presence: true

end
