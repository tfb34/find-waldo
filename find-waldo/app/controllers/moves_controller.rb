class MovesController < ApplicationController
    #using the params, check if found, update game(find-> last) if necessary
	def create
        @user = User.find(params[:id])
        @character = Character.find(params[:character_id])
        x1 = @character.coordinates.first.col
        y1 = @character.coordinates.first.row
        x2 = @character.coordinates.last.col 
        y2 = @character.coordinates.last.row
        x = params[:x].to_i
        y = params[:y].to_i
        bool = false
        if(x >= x1 && x <= x2 && y >= y1 && y<=y2)
            bool = true
            @user.charactersFound -=1
        end
        #add javascript here to change the border of caught character
        respond_to do |format|
            format.js
        end
	end
end
