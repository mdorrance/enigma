require 'minitest/autorun'
require_relative 'character_map'

class CharacterMapTest < Minitest::Test
  def test_for_new_character_map
    character_map = CharacterMap.new
    assert true, character_map
  end
  def test_for_array_of_characters
    character_map = CharacterMap.new
    assert_equal ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","], character_map.character_map
  end
  def test_length_of_character_map
    character_map = CharacterMap.new
    assert_equal 39, character_map.character_map.size
  end
end