class Character 

  attr_reader :allies,
              :enemies,
              :photo_url,
              :name,
              :affiliation

  def initialize(attributes)
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @photo_url = attributes[:photoUrl]
    @name = attributes[:name]
    @affiliation = attributes[:affiliation]
  end
  
end