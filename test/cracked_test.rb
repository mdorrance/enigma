require 'minitest/autorun'
require_relative '../lib/cracked'

class CrackedTest < Minitest::Test

  def test_for_new_message_file
    File.open("test-encrypted-message.txt", "w") do |f|
      f.write("qqo1xjz40xgohqqphk")
    end

    crack = Cracked.new("test-encrypted-message.txt", "cracked.txt", "01011")

    crack.file_reader

    assert_equal "hello world..end..", File.read("cracked.txt")
  end

end