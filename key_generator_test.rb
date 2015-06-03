require 'minitest/autorun'
require_relative 'key_generator'

class KeyGeneratorTest < Minitest::Test
  def test_for_new_key_generator
    key = KeyGenerator.new
    assert true, key
  end

  def test_create_a_array_of_5_numbers
    key = KeyGenerator.new

    assert_equal [0,1,0,1,1], key.generate_key
  end
  def test_turn_array_to_string
    skip
    key = KeyGenerator.new
    assert_equal "01011", key.generate_key
  end
  def test_rotation_A
    key = KeyGenerator.new
    assert_equal 1, key.rotate_a

  end
  def test_rotation_B
    key = KeyGenerator.new
    assert_equal 10, key.rotate_b

  end

  def test_rotation_C
    key = KeyGenerator.new
    assert_equal 1, key.rotate_c

  end
  def test_rotation_D
    key = KeyGenerator.new
    assert_equal 11, key.rotate_d

  end
end
