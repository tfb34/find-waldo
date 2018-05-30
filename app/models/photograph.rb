class Photograph < ApplicationRecord
	has_many :characters
	has_many :users
	validates :title, presence: true, uniqueness: true

	def getTopPlayers()
		topScorers = users.order(score: :asc).limit(10)#utilize score column not id
		return topScorers
	end

	def isTopTen(latestScore)
		bool = false
		topScorers = users.order(score: :asc).limit(10)#utilize score column not id
		if(topScorers.length <10)
			bool = true
		elsif(topScorers.last.score < latestScore)
			bool = true
		end

		return bool
	end

	def getLastScore()
		topScorers = users.order(score: :asc).limit(10)
		if(topScorers.length > 0)
			return topScorers.last.score
		end
		return 0
	end

	def getCharacters()
		arr = []
		characters.each do |c|
			arr.push(c.name.capitalize)
		end
		arr[arr.count-1] = 'and '+arr.last unless arr.count ==1
		return arr.join(', ')
	end
end
