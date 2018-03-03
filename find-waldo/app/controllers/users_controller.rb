class UsersController < ApplicationController
    #all high ranks of particular photograph
    def index
        @photograph = Photograph.find(User.last.photograph_id)
        @users = @photograph.getTopScorers()
    end

	def new
    end
    #creates a new user
    def create
        @user = User.create(user_params)
        #@photograph = Photograph.find(params[:photo_id]);
        #@user = @photograph.users.create(charactersFound: @photograph.characters.count)
        @user.save
        redirec_to 
    end
end


private

def user_params
    params.require(:user).permit(:name, :score,:photograph_id)
end