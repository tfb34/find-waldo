class PhotographsController < ApplicationController

  def index
  	@photographs = Photograph.all
  end

  def show
  	@photograph = Photograph.find(params[:id])
  	@user = @photograph.users.create(charactersFound: @photograph.characters.count)
  end
end
