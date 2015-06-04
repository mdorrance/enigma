require 'minitest/autorun'
require_relative '../lib/encrypt'

class EncryptTest < Minitest::Test

  def test_for_new_message_file
    File.open("test-message.txt", "w") do |f|
      f.write("hello world")
    end

    encrypt = Encrypt.new("test-message.txt", "encrypted.txt")

    encrypt.file_reader

    assert_equal "qqo1xjz40xg", File.read("encrypted.txt")
  end

end