class Photograph < ApplicationRecord
	has_many :characters
	has_many :users
	validates :title, presence: true, uniqueness: true

	def getTopPlayers(limit)
		topScorers = users.order(id: :asc).limit(2)#utilize score column not id
		return topScorers
	end
end
