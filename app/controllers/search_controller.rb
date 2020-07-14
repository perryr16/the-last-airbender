class SearchController < ApplicationController

  def index
    character_results = AirbenderResults.new
    @characters = character_results(params)
    binding.pry
  end
  

end