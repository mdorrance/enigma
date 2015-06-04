require 'minitest/autorun'
require_relative '../lib/key_generator'

class KeyGeneratorTest < Minitest::Test

  def test_for_new_key_generator
    key = KeyGenerator.new("01011")
    assert key
  end

  def test_create_a_array_of_5_numbers
    key = KeyGenerator.new("01011")
    assert_equal 5, key.count
  end

  def test_rotation_A
    key = KeyGenerator.new("01011")
    assert_equal 1, key.rotate_a
  end

  def test_rotation_B
    key = KeyGenerator.new("01011")
    assert_equal 10, key.rotate_b
  end

  def test_rotation_C
    key = KeyGenerator.new("01011")
    assert_equal 1, key.rotate_c
  end

  def test_rotation_D
    key = KeyGenerator.new("01011")
    assert_equal 11, key.rotate_d
  end

end
