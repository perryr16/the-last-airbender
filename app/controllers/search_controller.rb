class SearchController < ApplicationController

  def index
    AirbenderResults.new.characters(params)
  end
  

end