require 'date'
class OffsetGenerator
  # The date of message transmission is also factored into the encryption
  # Consider the date in the format DDMMYY, like 020315
  def date_format
    Time.now.strftime('%d%m%y')

  end
  # Square the numeric form (937278225) and find the last four digits (9225)

  def square_date
    (date_format.to_i)**2
  end
  def date_key
    square_date.to_s.slice(-4..-1)
  end
  # The first digit is the "A offset" (8)
  def offset_a
    date_key.slice(0).to_i
  end
  # The second digit is the "B offset" (2)
  def offset_b
    date_key.slice(1).to_i
  end
  # The third digit is the "C offset" (2)
  def offset_c
    date_key.slice(2).to_i
  end
  # The fourth digit is the "D offset" (5)
  def offset_d
    date_key.slice(3).to_i
  end


end

date = OffsetGenerator.new
puts date.date_format.class
puts date.square_date


