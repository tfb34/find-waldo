class MovesController < ApplicationController
    #using the params, check if found, update game(find-> last) if necessary
	def create
       
        #add javascript here to change the border of caught character
        respond_to do |format|
             
             format.js 
        end
	end
end
