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
require_relative '../lib/cracking'
require_relative '../lib/offset_generator'
require_relative '../lib/key_generator'
require 'pry'

class Cracked

  attr_reader :message_file, :key, :date
  attr_accessor :cracked_file_name

  def initialize(message_file, cracked_file_name, key)
    @message_file = message_file
    @cracked_file_name = cracked_file_name
    if key.nil?
      @key = "00000"
    else
      @key = key
    end
    # (0..4).collect { rand(0..9) }.join
    #KeyGenerator.new.generate_key
    @date = Time.now.strftime('%d%m%y')
  end

  def file_reader
    message_file = File.open("#{@message_file}", "r").read

    cracked_message = Cracking.new(message_file, @key, @date).cracked_message
    write_encrypted_file(cracked_message)
  end

  def write_encrypted_file(cracked_message)
    write_file = File.open(@cracked_file_name, "w")
    write_file.write(cracked_message)
    write_file.close

    # File.open(@encrypted_file_name, "w") do |f|
    #   f.write(encrypted_message)
    # end
  end

end

if __FILE__ == $0
  encrypt = Encrypt.new(ARGV[0], ARGV[1], ARGV[2])
  encrypt.file_reader
  puts "Created #{ARGV[1]} with this key #{encrypt.key} and the date #{encrypt.date}"
end
