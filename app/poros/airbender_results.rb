class AirbenderResults 

  def service
    service = AirbenderService.new
  end
  
  def characters(params)
    nation = params[:nation].sub('_','+')
    characters_details = service.characters_by_nation(nation)
    @characters = characters_details.map do |details| 
      Character.new(details)
    end
  end

end