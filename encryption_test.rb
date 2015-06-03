require 'minitest/autorun'
require_relative 'encryption'

class EncryptionTest < Minitest::Test

  def test_for_new_encryption
    encryption = Encryption.new
    assert true
  end
  def test_total_A_rotation
    encryption = Encryption.new
    assert_equal 9, encryption.total_rotate_a
  end
  def test_total_B_rotation
    encryption = Encryption.new
    assert_equal 12, encryption.total_rotate_b
  end
  def test_total_C_rotation
    encryption = Encryption.new
    assert_equal 3, encryption.total_rotate_c
  end
  def test_total_D_rotation
    encryption = Encryption.new
    assert_equal 16, encryption.total_rotate_d
  end
  def test_that_there_is_a_message
    encryption = Encryption.new
    assert_equal "hello world", encryption.message
  end
  def test_slice_message_into_4_letter_slice
    encryption = Encryption.new
    assert_equal [["h", "e", "l", "l"], ["o", " ", "w", "o"], ["r", "l", "d"]], encryption.parsed

  end
  def test_rotate_each_letter_in_order_of_rotation_per_slice
    encryption = Encryption.new
    assert_equal [["q", "q", "o", "1"], ["x", "j", "z", "4"], ["0", "x", "g"]], encryption.rotate

  end
  def test_flatten_the_rotate_array_of_arrays
    encryption = Encryption.new
    assert_equal "qqo1xjz40xg", encryption.encrypted_message
  end
  def test_write_to_file_total_encrypted_message
    encryption = Encryption.new
    assert encryption.write_encrypted_file, "hi"
  end
end