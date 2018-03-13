class User < ApplicationRecord
	belongs_to :photograph

	def getScoreStr()
		duration = score
		puts score
		hrs = (duration/3600).floor
    	duration = duration - (hrs*3600)
    	mins = (duration/60).floor
    	duration = duration - (mins*60)
    	duration = "#{hrs}:#{mins}:#{duration.floor}"
		#score = hrs+":"+mins+":"+(score).floor;
    	return duration
	end
end
