class Character < ApplicationRecord
	has_many :coordinates
	belongs_to :photograph
	validates :name, presence: true

	def getCoordStr()
		str = ""
		if(coordinates)
			coord1 = coordinates.first
			coord2 = coordinates.last
			str = coord1.getCoordStr()+","+coord2.getCoordStr
		end
		return str

	end
end
