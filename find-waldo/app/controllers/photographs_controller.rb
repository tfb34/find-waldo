class PhotographsController < ApplicationController

  def index
  	@photographs = Photograph.all
  end

  def show
  	@photograph = Photograph.find(params[:id])
  end
end
