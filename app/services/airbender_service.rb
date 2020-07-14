class AirbenderService 

  def conn 
    Faraday.new('https://last-airbender-api.herokuapp.com/')
  end

  def get_characters(params)
    response = conn.get("api/v1/characters#{params}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def characters_by_nation(nation)
    count = total_characters_by(nation)
    get_characters("?affiliation=#{nation}&perPage=#{count}")
  end

  def total_characters_by(nation)
    nation = nation.sub('+', ' ')
    nation_characters = get_all_characters.find_all do |character| 
      character[:affiliation].downcase.include?(nation) if character[:affiliation]
    end
    count = nation_characters.count 
  end

  def get_all_characters 
    response = conn.get("api/v1/characters?perPage=497")
    all_characters = JSON.parse(response.body, symbolize_names: true)
  end
  
end