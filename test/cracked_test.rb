require 'minitest/autorun'
require_relative '../lib/cracked'

class CrackedTest < Minitest::Test

  def test_for_new_message_file
    File.open("test-message.txt", "w") do |f|
      f.write("hello world")
    end

    crack = Cracked.new("test-message.txt", "encrypted.txt", "01011")

    crack.file_reader

    assert_equal "qqo1xjz40xg", File.read("encrypted.txt")
  end

end