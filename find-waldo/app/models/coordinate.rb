class Coordinate < ApplicationRecord
	validates :col, presence: true
	validates :row, presence: true
end
