
require_relative 'decryption'
require_relative 'offset_generator'
require_relative 'key_generator'
require 'pry'

class Decrypt

  attr_reader :message_file, :key, :date
  attr_accessor :decrypted_file_name

  def initialize(message_file, decrypted_file_name, key, date)
    @encrypted_file = message_file
    @decrypted_file_name = decrypted_file_name
    @key = key
    @date = date
    # (0..4).collect { rand(0..9) }.join
    #KeyGenerator.new.generate_key
  end

  def file_reader
    message_file = File.open("#{@encrypted_file}", "r").read

    decrypted_message = Decryption.new(message_file, @key, @date).decrypted_message
    write_decrypted_file(decrypted_message)
  end

  def write_decrypted_file(decrypted_message)
    write_file = File.open(@decrypted_file_name, "w")
    write_file.write(decrypted_message)
    write_file.close
  end

end

if __FILE__ == $0
  decrypt = Decrypt.new(ARGV[0], ARGV[1], ARGV[2], ARGV[3])
  decrypt.file_reader
  puts "Created #{ARGV[1]} with this key #{ARGV[2]} and the date #{ARGV[3]}"
end
# decrypt = Encrypt.new("message.txt", "decrypted4.txt")
# decrypt.file_reader