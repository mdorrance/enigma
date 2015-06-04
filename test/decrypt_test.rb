#Runner for decryption.rb
#User needs to enter encrypted.txt, created a decrypted.txt, key, formatted date
#out put require 'minitest/autorun'
require 'minitest/autorun'
require_relative '../lib/decrypt'

class DecryptTest < Minitest::Test

  def test_for_new_message_file
    File.open("encrypted.txt", "w") do |f|
      f.write("qqo1xjz40xg")
    end

    decrypt = Decrypt.new("encrypted.txt", "decrypted.txt", "01011", "040615")

    decrypt.file_reader

    assert_equal "hello world", File.read("decrypted.txt")
  end

end