class AirbenderService 

  def conn 
    Faraday.new('https://last-airbender-api.herokuapp.com/')
  end

  def get_characters(params)
    response = conn.get("api/v1/characters#{params}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def characters_by_nation(nation)
    get_characters("?affiliation=#{nation}")
  end
  
end