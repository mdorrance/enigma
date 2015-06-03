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
    skip
    encryption = Encryption.new
    assert_equal 12, encryption.total_rotate_a
  end
  def test_total_C_rotation
    skip
    encryption = Encryption.new
    assert_equal 3, encryption.total_rotate_a
  end
  def test_total_D_rotation
    skip
    encryption = Encryption.new
    assert_equal 16, encryption.total_rotate_a
  end
  def test_slice_message_into_4_letter_slice
    skip
    encryption = Encryption.new

  end
  def test_rotate_each_letter_in_order_of_rotation_per_slice
    skip
    encryption = Encryption.new

  end
  def test_store_total_encrypted_message
    skip
    encryption = Encryption.new

  end
end