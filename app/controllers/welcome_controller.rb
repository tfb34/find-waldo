class WelcomeController < ApplicationController
  def index
  	@photographs = Photograph.all
  end
end
