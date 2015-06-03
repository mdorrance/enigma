class KeyGenerator
  #create 5 random numbers 0-9
  def generate_key
    # (0..4).collect { rand(0..9) }.join
    [0,1,0,1,1]
  end
  #A rotation = add [0] + [1]
  def rotate_a
    generate_key.values_at(0,1).join.to_i
  end

  #B rotation = add [1] + [2]
  def rotate_b
    generate_key.values_at(1,2).join.to_i
  end
  #C rotation = add [2] + [3]
  def rotate_c
    generate_key.values_at(2,3).join.to_i
  end
  #D rotation = add [3] + [4]
  def rotate_d
    generate_key.values_at(3,4).join.to_i
  end

end

key = KeyGenerator.new
puts key.generate_key.inspect
puts key.rotate_a.inspect
puts key.rotate_b.inspect
puts key.rotate_c.inspect
puts key.rotate_d.inspect