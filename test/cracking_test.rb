require 'minitest/autorun'
require_relative '../lib/cracking'

class CrackingTest < Minitest::Test

  def test_for_new_cracking
    cracking = Cracking.new("hello world", "01011", "040615")
    assert true
  end

  def test_total_A_rotation
    cracking = Cracking.new("hello world", "01011", "040615")
    assert_equal 9, cracking.total_rotate_a
  end

  def test_total_B_rotation
    cracking = Cracking.new("hello world", "01011", "040615")
    assert_equal 12, cracking.total_rotate_b
  end

  def test_total_C_rotation
    cracking = Cracking.new("hello world", "01011", "040615")
    assert_equal 3, cracking.total_rotate_c
  end

  def test_total_D_rotation
    cracking = Cracking.new("hello world", "01011", "040615")
    assert_equal 16, cracking.total_rotate_d
  end

  def test_that_there_is_a_message
    cracking = Cracking.new("hello world", "01011", "040615")
    assert_equal "hello world", cracking.message
  end

  def test_slice_message_into_4_letter_slice
    cracking = Cracking.new("hello world", "01011", "040615")
    assert_equal [["h", "e", "l", "l"], ["o", " ", "w", "o"], ["r", "l", "d"]], cracking.parsed
  end

  def test_rotate_each_letter_in_order_of_rotation_per_slice
    cracking = Cracking.new("hello world", "01011", "040615")
    assert_equal [["q", "q", "o", "1"], ["x", "j", "z", "4"], ["0", "x", "g"]], cracking.rotate
  end

  def test_flatten_the_rotate_array_of_arrays
    cracking = Cracking.new("hello world", "01011", "040615")
    assert_equal "qqo1xjz40xg", cracking.cracked_message
  end

end