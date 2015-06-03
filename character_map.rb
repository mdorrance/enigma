class CharacterMap
  def character_map
    ('a'..'z').to_a + ('0'..'9').to_a + [' ', '.',',']
  end
end

char = CharacterMap.new
print char.character_map.size