class AirbenderService 

  def conn 
    Faraday.new('https://last-airbender-api.herokuapp.com/')
  end

  def get_characters(params)
    response = conn.get("api/v1/characters#{params}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def characters_by_nation(nation, count)
    get_characters("?affiliation=#{nation}&perPage=#{count}")
  end

  def get_all_characters 
    response = conn.get("api/v1/characters?perPage=497")
    all_characters = JSON.parse(response.body, symbolize_names: true)
  end
  
end