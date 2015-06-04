# when the user opens the file they will need to pass 2 arguments
# message.txt and the encrypted.text
# check if the file is not already present.
# Use the encrypt file date/time stamp to extract the date
# Date needs to be in DDMMYY format
# Generate the random 5 number key
# Output to screen the string -
#
# $ ruby ./lib/encrypt.rb message.txt encrypted.txt
# Created 'encrypted.txt' with the key 82648 and date 030415
require_relative 'encryption'
require_relative 'offset_generator'
require_relative 'key_generator'
require 'pry'

class Encrypt

  attr_reader :message_file, :key, :date
  attr_accessor :encrypted_file_name

  def initialize(message_file, encrypted_file_name)
    @message_file = message_file
    @encrypted_file_name = encrypted_file_name
    @key = "01011"
    # (0..4).collect { rand(0..9) }.join
       #KeyGenerator.new.generate_key
    @date = Time.now.strftime('%d%m%y')
  end

  def file_reader
    message_file = File.open("#{@message_file}", "r").read

    encrypted_message = Encryption.new(message_file, @key, @date).encrypted_message
    write_encrypted_file(encrypted_message)
  end
  def write_encrypted_file(encrypted_message)
    write_file = File.open(@encrypted_file_name, "w")
    write_file.write(encrypted_message)
    write_file.close

    # File.open(@encrypted_file_name, "w") do |f|
    #   f.write(encrypted_message)
    # end
  end
  def encrypted_file?

  end
end

if __FILE__ == $0
  encrypt = Encrypt.new(ARGV[0], ARGV[1])
  encrypt.file_reader
  puts "Created #{ARGV[1]} with this key #{encrypt.key} and the date #{encrypt.date}"
end
# encrypt = Encrypt.new("message.txt", "encrypted4.txt")
# encrypt.file_reader