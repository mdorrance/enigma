#Use the provided encrypted.txt to decrypt with provided key and date
#create decryptedrequire 'minitest/autorun'
require_relative 'decryption'

class DecryptionTest < Minitest::Test

  def test_for_new_decryption
    decryption = Decryption.new("qqo1xjz40xg", "01011", "040615")
    assert true
  end
  def test_total_A_rotation
    decryption = Decryption.new("qqo1xjz40xg", "01011", "040615")
    assert_equal -9, decryption.total_rotate_a
  end
  def test_total_B_rotation
    decryption = Decryption.new("qqo1xjz40xg", "01011", "040615")
    assert_equal -12, decryption.total_rotate_b
  end
  def test_total_C_rotation
    decryption = Decryption.new("qqo1xjz40xg", "01011", "040615")
    assert_equal -3, decryption.total_rotate_c
  end
  def test_total_D_rotation
    decryption = Decryption.new("qqo1xjz40xg", "01011", "040615")
    assert_equal -16, decryption.total_rotate_d
  end
  def test_that_there_is_a_message
    decryption = Decryption.new("qqo1xjz40xg", "01011", "040615")
    assert_equal "qqo1xjz40xg", decryption.message
  end
  def test_slice_message_into_4_letter_slice
    decryption = Decryption.new("qqo1xjz40xg", "01011", "040615")
    assert_equal [["h", "e", "l", "l"], ["o", " ", "w", "o"], ["r", "l", "d"]], decryption.parsed

  end
  def test_rotate_each_letter_in_order_of_rotation_per_slice
    decryption = Decryption.new("qqo1xjz40xg", "01011", "040615")
    assert_equal [["q", "q", "o", "1"], ["x", "j", "z", "4"], ["0", "x", "g"]], decryption.rotate

  end
  def test_flatten_the_rotate_array_of_arrays
    decryption = Decryption.new("qqo1xjz40xg", "01011", "040615")
    assert_equal "qqo1xjz40xg", decryption.decrypted_message
  end
end