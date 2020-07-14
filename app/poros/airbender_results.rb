class AirbenderResults 

  def service
    service = AirbenderService.new
  end
  
  def characters(params)
    nation = params[:nation].sub('_','+')
    characters = service.characters_by_nation(nation)
    binding.pry
  end

end