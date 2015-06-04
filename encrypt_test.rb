require 'minitest/autorun'
require_relative 'encrypt'

class EncryptTest < Minitest::Test

  def test_for_new_message_file
    skip
    encrypt = Encrypt.new("message.txt", "encrypted.txt")

    assert_equal "message.txt", encrypt.file_reader
  end

  def test_for_encrypted_message_file
    skip
    encrypt = Encrypt.new("message.txt", "encrypted.txt")

    assert_equal "encrypted.txt", encrypt.file_reader
  end

  def test_read_message_file
    skip
    encrypt = Encrypt.new("message.txt", "encrypted.txt")

    assert_equal "hello world", encrypt.file_reader
  end

  def test_create_encrypt_message_file
    skip
    encrypt = Encrypt.new("message.txt", "encrypted.txt")

    assert_equal true, encrypt.encrypted_file?
  end
end