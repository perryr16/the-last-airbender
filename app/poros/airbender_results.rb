class AirbenderResults 

  def service
    service = AirbenderService.new
  end
  
  # def characters(params)
  #   nation = params[:nation].sub('_','+')
  #   characters_details = service.characters_by_nation(nation)
  #   @characters = characters_details.map do |details| 
  #     Character.new(details)
  #   end
  # end
  
  def characters(params)
    nation = params[:nation].sub('_','+')
    count = total_characters_by(nation)
    characters_details = service.characters_by_nation(nation, count)
    @characters = characters_details.map do |details| 
      Character.new(details)
    end
  end

  def total_characters_by(nation)
    nation = nation.sub('+', ' ')
    nation_characters = service.get_all_characters.find_all do |character| 
      character[:affiliation].downcase.include?(nation) if character[:affiliation]
    end
    count = nation_characters.count 
  end



end