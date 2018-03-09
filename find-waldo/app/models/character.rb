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

	def getX1()
		if(c = coordinates.first)
			return c[0];
		end
	end

	def getX2()
		if(c = coordinates.last)
			return c[0];
		end
	end

	def getY1()
		if(c = coordinates.first)
			return c[1];
		end
	end

	def getY2()
		if(c = coordinates.last)
			return c[1];
		end
	end

	def getImageSrc()
		src = ""
		if(name === "waldo")
			src = "waldo.jpg"
		elsif name === "wenda"
			src = "wenda.jpeg"
		elsif name === "odlaw"
			src = "odlaw.jpg"
		elsif name === "wizard"
			src = "wizard.jpeg"
		end
		return src
	end
end
