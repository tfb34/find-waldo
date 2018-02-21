class UsersController < ApplicationController
  
	def new
    end
    #creates a new user
    def create
    	byebug
        #@photograph = Photograph.find(params[:photo_id]);
        #@user = @photograph.users.create(charactersFound: @photograph.characters.count)
        @user.save
    end
    #always gonna edit the most recent player
    def edit
    	byebug
        @user = User.find(params[:id])
    end

    #here you must check if player has found a character , 
    #params[:x], params[:y], params[:character_id]
    def update
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
        @user.save

        
    end
end
