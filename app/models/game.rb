class Game < ApplicationRecord
	has_many :moves

	def isGameOver()
		gameOver = false
		if(numOfCharacters === numOfFinds)
			gameOver = true
		end
		return gameOver
	end

	def foundCharacter()
		Game.last.update_attributes(:numOfFinds => numOfFinds+1)
	end
end
