require 'minitest/autorun'
require_relative 'offset_generator'

class OffsetGeneratorTest < Minitest::Test

  def test_for_new_offset_generator
    offset_generator = OffsetGenerator.new
    assert true, offset_generator
  end

  def test_encrypt_date
    offset_generator = OffsetGenerator.new
    assert_equal "030615", offset_generator.date_format
  end

  def test_square_date
    offset_generator = OffsetGenerator.new
    assert_equal 937278225, offset_generator.square_date
  end

  def test_date_key
    offset_generator = OffsetGenerator.new
    assert_equal "8225", offset_generator.date_key
  end

  def test_offset_a
    offset_generator = OffsetGenerator.new
    assert_equal 8, offset_generator.offset_a
  end

  def test_offset_b
    offset_generator = OffsetGenerator.new
    assert_equal 2, offset_generator.offset_b
  end

  def test_offset_c
    offset_generator = OffsetGenerator.new
    assert_equal 2, offset_generator.offset_c
  end

  def test_offset_d
    offset_generator = OffsetGenerator.new
    assert_equal 5, offset_generator.offset_d
  end

end
