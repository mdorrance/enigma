require 'pry'
require_relative 'offset_generator'
require_relative 'key_generator'
require_relative 'encrypt'
require_relative 'character_map'

class Encryption
  attr_accessor :offset_generator, :key_generator

  def initialize

    @message = Encrypt.new("message.txt", "encrypted.txt")
    @offset_generator = OffsetGenerator.new
    @key_generator = KeyGenerator.new
    @character_map = CharacterMap.new
  end
  # Four characters are encrypted at a time.

  # The first character is rotated forward by the "A" rotation plus the "A offset"
  def total_rotate_a
    @offset_generator.offset_a + @key_generator.rotate_a
  end

  # The second character is rotated forward by the "B" rotation plus the "B offset"

  def total_rotate_b
    @offset_generator.offset_b + @key_generator.rotate_b
  end

  # The third character is rotated forward by the "C" rotation plus the "C offset"
  def total_rotate_c
    @offset_generator.offset_c + @key_generator.rotate_c
  end

  # The fourth character is rotated forward by the "D" rotation plus the "D offset"
  def total_rotate_d
    @offset_generator.offset_d + @key_generator.rotate_d
  end

  def message
    @message.message
  end

  def parsed
   message.chars.each_slice(4).to_a { |letter| letter }
  end

  def rotate
    parsed.map do |parse|
      parse.each_with_index.map do |letter, index|
        if index == 0
          p @character_map.character_map[((@character_map.character_map.index(letter) + total_rotate_a) % 39)]
        elsif index == 1
          p @character_map.character_map[((@character_map.character_map.index(letter) + total_rotate_b) % 39)]
        elsif index == 2
          p @character_map.character_map[((@character_map.character_map.index(letter) + total_rotate_c) % 39)]
        else index == 3
          p @character_map.character_map[((@character_map.character_map.index(letter) + total_rotate_d) % 39)]
        end
      end
    end
  end
  def encrypted_message
    rotate.flatten.join
  end
  def write_encrypted_file
    write_file = File.open(@message.encrypted_file_name, "w")
    write_file.write(encrypted_message)
    write_file.close
  end




end
encryption = Encryption.new
puts encryption.total_rotate_a
puts encryption.total_rotate_b
puts encryption.total_rotate_c
puts encryption.total_rotate_d

puts encryption.message
puts encryption.parsed.inspect
puts encryption.rotate
puts encryption.encrypted_message