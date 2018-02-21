class PhotographsController < ApplicationController

  def index
  	@photographs = Photograph.all
  end

  def show
  	@photograph = Photograph.find(params[:id])
  	#@user = @photograph.users.create(charactersFound: @photograph.characters.count)
  	@game = Game.create(numOfCharacters: @photograph.characters.count, numOfFinds: 0, score: 0)
  end
end
