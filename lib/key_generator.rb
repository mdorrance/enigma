require 'pry'

class KeyGenerator
  #create 5 random numbers 0-9
  def initialize(key)
    @key = key
  end
  def count
    # (0..4).collect { rand(0..9) }.join
    @key.length
  end
  #A rotation = add [0] + [1]
  def rotate_a
    @key.chars.values_at(0,1).join.to_i
  end
  #B rotation = add [1] + [2]
  def rotate_b
    @key.chars.values_at(1,2).join.to_i
  end
  #C rotation = add [2] + [3]
  def rotate_c
    @key.chars.values_at(2,3).join.to_i
  end
  #D rotation = add [3] + [4]
  def rotate_d
    @key.chars.values_at(3,4).join.to_i
  end

end

