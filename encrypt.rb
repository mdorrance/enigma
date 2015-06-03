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

class Encrypt

  def initialize(message_file, encrypted_file)
    @message_file = message_file
    @encrypted_file = encrypted_file
    @message = ''
  end

  def message_file
    @message_file
  end
  def encrypted_file
    @encrypted_file
  end
  def message
    @message = File.open(@message_file, "r")
    @message.read

  end
  def encrypted_file?

  end
end

encrypt = Encrypt.new("message.txt", "encrypted.txt")
puts encrypt.message