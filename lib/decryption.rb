require 'pry'
require_relative 'offset_generator'
require_relative 'key_generator'

require_relative 'character_map'

class Decryption
  attr_accessor :offset_generator, :key_generator

  def initialize(message, key_generator, date)
    @message = message
    @offset_generator = OffsetGenerator.new(date)
    @key_generator = key_generator
    @character_map = CharacterMap.new
  end
  # Four characters are encrypted at a time.

  # The first character is rotated forward by the "A" rotation plus the "A offset"
  def total_rotate_a
    -1 * (@offset_generator.offset_a + @key_generator.chars.values_at(0,1).join.to_i)
  end

  # The second character is rotated forward by the "B" rotation plus the "B offset"

  def total_rotate_b
    -1 * (@offset_generator.offset_b + @key_generator.chars.values_at(1,2).join.to_i)
  end

  # The third character is rotated forward by the "C" rotation plus the "C offset"
  def total_rotate_c
    -1 * (@offset_generator.offset_c + @key_generator.chars.values_at(2,3).join.to_i)
  end

  # The fourth character is rotated forward by the "D" rotation plus the "D offset"
  def total_rotate_d
    -1 * (@offset_generator.offset_d + @key_generator.chars.values_at(3,4).join.to_i)
  end
  def message
    @message
  end
  def parsed
    @message.chars.each_slice(4).to_a { |letter| letter }
  end

  def rotate
    parsed.map do |parse|
      parse.each_with_index.map do |letter, index|
        if index == 0
          @character_map.character_map[((@character_map.character_map.index(letter) + total_rotate_a) % 39)]
        elsif index == 1
          @character_map.character_map[((@character_map.character_map.index(letter) + total_rotate_b) % 39)]
        elsif index == 2
          @character_map.character_map[((@character_map.character_map.index(letter) + total_rotate_c) % 39)]
        else index == 3
        @character_map.character_map[((@character_map.character_map.index(letter) + total_rotate_d) % 39)]
        end
      end
    end
  end
  def decrypted_message
    rotate.flatten.join
  end

end
